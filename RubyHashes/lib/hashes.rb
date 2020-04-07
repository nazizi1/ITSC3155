# RubyHashes
# Part I
def array_2_hash emails, contacts
    #moves through emails using i and goes up 1 each iteration 
    i = 0 
    if emails[i] == nil 
        return contacts
    else 
        contacts.each_key do |k|
        contacts[k] = emails[i]
        i +=1
        end
    end
    return contacts
end 

# Part II
def array2d_2_hash contact_info, contacts
    i = 0
    #checks for the empty array
    if contact_info[i].length == 0
        return contacts
    else 
        contacts.each_key do |k|
            #inner hash using test cases
            h = {'email' => contact_info[i][0], 'phone' =>contact_info[i][1]}
            contacts[k] = h
            #iterates through
            i += 1
        end
    end
        return contacts
end
