class Create
    def createnumber
        random = Random.new()
        $macNumber = random.rand(0..2)
            if $macNumber == 0
                pose = "グー"
            elsif $macNumber == 1
                pose = "チョキ"
            elsif $macNumber == 2
                pose = "パー"
            end
        1.times do
            puts "Mac:#{pose}を出しました。"
        end
    end
    
    def make_direction
        random = Random.new()
        $macDirection = random.rand(0..3)
            if $macDirection == 0
                direction = "↑"
            elsif $macDirection == 1
                direction = "→"
            elsif $macDirection == 2
                direction = "↓"
            elsif $macDirection == 3
                direction = "←"
            end
        1.times do
            puts "Mac:#{direction}"
        end
    end
end

class You
    def serif
        puts "ほいっ！"
        puts "-----------------"
    end
    
    def rock
        puts "あなた：グーを出しました。"
        create_number = Create.new()
        create_number.createnumber
    end

    def scissors
        puts "あなた：チョキを出しました。"
        create_number = Create.new()
        create_number.createnumber
    end

    def paper
        puts "あなた：パーを出しました。"
        create_number = Create.new()
        create_number.createnumber
    end
    
    def north
        puts "あなた：↑"
        create_direction = Create.new()
        create_direction.make_direction
    end
        
    def east
        puts "あなた：→"
        create_direction = Create.new()
        create_direction.make_direction
    end
        
    def south
        puts "あなた：↓"
        create_direction = Create.new()
        create_direction.make_direction
    end
        
    def west
        puts "あなた：←"
        create_direction = Create.new()
        create_direction.make_direction
    end
end

puts "じゃんけん..."
puts "0(グー), 1(チョキ), 2(パー), 3(終了する)"
while true
        yourNumber = gets.chomp
        if yourNumber == "0"
            you = You.new()
            you.serif
            you.rock
        
        elsif yourNumber == "1"
            you = You.new()
            you.serif
            you.scissors
        
        elsif yourNumber == "2"
            you = You.new()
            you.serif
            you.paper
        
        elsif yourNumber == "3"
            puts "終了します。"
　　    　　break
        else 
            puts "0,1,2,3のいずれかを選択してくだいさい。"
        end

        if yourNumber == $macNumber.to_s
            puts "-----------------"
            puts "あいこで〜"
        else    
            puts "-----------------"
            puts "あっち向いて〜"
            puts "0(↑), 1(→), 2(↓), 3(←)"
            yourDirection = gets.chomp
            if yourDirection == "0"
                you = You.new()
                you.serif
                you.north
            elsif yourDirection == "1"
                you = You.new()
                you.serif
                you.east
            elsif yourDirection == "2"
                you = You.new()
                you.serif
                you.south
            elsif yourDirection == "3"
                you = You.new()
                you.serif
                you.west
            else 
                puts "0,1,2,3のいずれかを選択してくだいさい。"
            end
            if yourDirection == $macDirection.to_s
                puts "勝負がつきました。"
                break
            elsif
                puts "勝負がつきませんでした。"
                puts "じゃんけん..."
                puts "0(グー), 1(チョキ), 2(パー), 3(終了する)"
            end
        end
end
