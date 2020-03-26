require 'gibberish'

class Encryption
    def encrypt_data(data, passphrase)
        return Gibberish::AES.new(passphrase).encrypt(data)
    end

    def decrypt_data(encrypted_data, passphrase)
        return Gibberish::AES.new(passphrase).decrypt(encrypted_data)
    end

    def write_to_file(encrypted_data)
        # create new file and write encrypted data
        file = File.open("save", "w+") { |f|
            f.write(encrypted_data)
        }
    end

    def load_file()
        return File.read("save")
    end
end

encryption = Encryption.new()
encrypted_data = encryption.encrypt_data("Hello, World!", "Test123")
encryption.write_to_file(encrypted_data)
p decrypted_data = encryption.decrypt_data(encryption.load_file(), "Test123")