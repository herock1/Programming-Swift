//
//  LinkList.swift
//  Swift_Test_Programming
//
//  Created by Herock Hasan on 23/6/21.
//

import Foundation

class Node {
    
    var value : Int = 0
    var next : Node?
    
    init(value: Int, next : Node?) {
        self.value = value
        self.next = next
    }
    
}

class LinkList {
    
    var head: Node?
    
    // MARK: Insert ITEM into Index
    func insert(value : Int)
    {
        if head == nil{
            head = Node(value: value, next: nil)
            return
        }
        var current = head
        while current?.next != nil {
            current = current?.next
        } 
        current?.next = Node(value: value, next: nil)
    }
    
    func addAtHead(_ val: Int) {
            if(head == nil)
            {
                head = Node(value: val, next : nil)
            }
            else
            {
                let current = head
                head = Node(value : val, next : current)
            }
            
        }
    func addAtTail(_ val: Int) {
            
            if(head == nil)
            {
                head = Node(value: val, next : nil)
            }
            else
            {
                var current = head
                
                while(current?.next != nil)
                {
                    current = current?.next
                }
                
                current?.next = Node(value : val, next : nil)
            }
            
        }
    
    func insertInOrder(value : Int)
    {
        if head == nil || head?.value ?? Int.min >= value {
            let newNode = Node(value: value, next: head)
            head = newNode
            return
        }
        
        var currentNode : Node? = head
        while currentNode?.next != nil && currentNode?.next?.value ?? Int.min < value {
            currentNode = currentNode?.next
        }
        currentNode?.next = Node(value: value, next: currentNode?.next)
        
    }
    
    func addAtIndex(_ index: Int, _ val: Int) {
       if(head == nil)
         {
        head = Node(value: val, next : nil)
         }
         else
         {
            
             var count = 0
             var current = head
             var previous : Node?
            var newNode : Node?
             while (count != index)
             {
                 count = count + 1
                 previous = current
                 current = current?.next
             }
            
            if index == 0 {
                head =  Node(value: val, next: nil)
                head?.next = current
            }
            else
            {
            newNode = Node(value: val, next: current)
            previous?.next = newNode
            }
            
            
            //Node(value : val, next : current?.next)
         }
     }
    
    
    // MARK: Delete item into index
    
    func deleteItem(value : Int)  {
        
        if head?.value == value {
            head = head?.next
        }
        
        var prev : Node?
        var current = head
        while current != nil && current?.value != value{
//            print(current?.value ?? "")
            prev = current
            current = current?.next
            }
        prev?.next = current?.next
        
    }
    
    func deleteAtIndex(_ index: Int) {
            
               var count = 0
                var current = head
                var previous : Node?
                var next : Node?
                while (count != index)
                {
                    count = count + 1
                    previous = current
                    current = current?.next
                }
                previous?.next = current?.next
        }
    
    
    func removeNthFromEnd( n: Int) -> Node? {
        let dummy = head
           var slow: Node? = dummy
           var fast: Node? = dummy
           
           slow?.next = head
           for _ in 1...(n + 1) {
               fast = fast?.next
           }
           while fast != nil {
               slow = slow?.next
               fast = fast?.next
           }
           slow?.next = slow?.next?.next
        
           return dummy?.next
       }
    
    
    func get(_ index: Int) -> Int {
            if(head == nil)
            {
                return -1
            }
            else
            {
                var count = 0
                var current  = head
                while( count != index)
                {
                    count = count + 1
                    current = current?.next
                }
                
                return current?.value ?? -1
            }
        }
    
   
    // MARK: Display item into index
    
    func displayListItems()  {
        var current = head
        while current != nil {
            print(current?.value ?? "")
            current = current?.next
        }
    }
    
    // MARK: Dummey Operation into index
    
    func setUpDummyNodes()  {
        let three = Node(value: 5, next: nil)
        let two = Node(value: 4, next: three)
        let th = Node(value: 3, next: two)
        let fr = Node(value: 2, next: th)
            head = Node(value: 1, next: fr)
    }
    
    func reverseList() -> Node? {
        
        var prev : Node?
        var current  = head
        var next : Node?
        
        while current != nil {
            next = current?.next // storing second item in next
            current?.next = prev // nil  storing current next two nil to change direction
            prev = current // 1  in prev storing current value
            current = next // 4 current we setting next
        }
        head = prev
        return prev

    }
}


