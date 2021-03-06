//
//  main.swift
//  LeetCode-Swift
//
//  Created by Rambo on 2020/12/24.
//
//

import Foundation

public class TreeNode {
      public var val: Int
      public var left: TreeNode?
      public var right: TreeNode?
      public init(_ val: Int) {
          self.val = val
          self.left = nil
          self.right = nil
     }
  }

class Solution {
    func isSymmetric(_ root: TreeNode?) -> Bool {
        var queue1: [TreeNode?] = []
        var queue2: [TreeNode?] = []
        queue1.append(root)
        queue2.append(root)
        while queue1.count > 0 {
            var node1: TreeNode? = queue1.removeFirst()
            var node2: TreeNode? = queue2.removeFirst()
            if node1?.val != node2?.val { return false }

            if node1 != nil {
                queue1.append(node1?.left)
                queue1.append(node1?.right)
            }
            if node2 != nil {
                queue2.append(node2?.right)
                queue2.append(node2?.left)
            }
        }
        return true
    }
}

var solution = Solution()
var tree = TreeNode(1)
tree.left = TreeNode(2)
tree.right = TreeNode(2)
tree.left?.right = TreeNode(2)
//tree.right?.left = TreeNode(2)
print(solution.isSymmetric(tree))

