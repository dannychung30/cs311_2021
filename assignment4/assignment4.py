import string
import random

node_count = [4,3,2]

class my_node:
  def __init__(node):
    node.weights = []
    node.children = []
    
    node.name = ''
    letters = []
    for i in range(3):
      letters.append( random.choice(string.ascii_letters) ) # generates random set of 3 characters
    node.name = ''.join(letters)
   
  def create_node_children(node, current_layer, map):
    if current_layer >= len(map):
      return
    
    for i in range( map[current_layer] ):
      node.children.append( my_node() )
      
    node.children[0].create_node_children( current_layer + 1, map)
    
    for i in range(1, len(node.children) ):
      node.children[i].children = node.children[0].children[:]

  def print_out(node, current_layer, map):
    indentation = '   ' * current_layer
    
    if current_layer >= len(map):
      print(f"{indentation} {node.name}")
      return
    
    print(f"{indentation} {node.name} is connected to: ")
    for i in range( len(node.children) ):
      try:
        print(f"{indentation} Weight of {node.weight[i]}")
      except:
        pass
      
      node.children[i].print_out(current_layer + 1, map)
      
    return
  
  def set_weights(node, current_layer, map):
    if current_layer >= len(map):
      return
    node.weights = [0,0] * len(node.children)
    for i in range( len(node.children) ):
      node.weights[i] = random.uniform(0,1)
      node.children[i].set_weights(current_layer + 1, map)
      
    return

new_node = my_node()
new_node.create_node_children(0, node_count)
new_node.print_out(0, node_count)
print("After Weights")
new_node.set_weights(0, node_count)
new_node.print_out(0, node_count)

  
