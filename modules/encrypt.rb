require 'encryption'

class User
    attr_accessor :keypair, :public_key, :private_key
    def initialize()
        @keypair = Encryption::Keypair.new(2048)
        @public_key = @keypair.public_key
        @private_key = @keypair.private_key
    end

    def encrypt_data(data)
        return @public_key.encrypt(data)
    end

    def decrypt_data(encrypted_data)
        return @private_key.decrypt(encrypted_data)
    end

    def write_to_file(encrypted_data)
        # create new file
        file = File.open("save", "w+") { |f|
            f.write(encrypted_data)
        }
    end
end

user1 = User.new()
p encrypted_data = user1.encrypt_data("some encrypted data")
user1.write_to_file(encrypted_data)

file1 = File.read("save")

p user1.decrypt_data(file1)