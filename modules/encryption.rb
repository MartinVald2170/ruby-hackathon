require 'gibberish'

class FileEncrypt
    def encrypt_data(data, passphrase)
        return Gibberish::AES.new(passphrase).encrypt(data)
    end

    def decrypt_data(encrypted_data, passphrase)
        begin
            return Gibberish::AES.new(passphrase).decrypt(encrypted_data)
        rescue(Gibberish::AES::SJCL::DecryptionError)
            puts("Failed to decrypt, please try again.")
        rescue => ex
            puts("#{ex}")
        end
    end

    def write_file(encrypted_data)
        # create new file and write encrypted data
        File.open("save", "w+") { |f| f.write(encrypted_data) }
    end

    def read_file()
        return File.read("save")
    end
end