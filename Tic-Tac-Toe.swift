import Foundation

var matrix: [[Int]] = [ [0, 0, 0], [0, 0, 0], [0, 0, 0]]
let X: Int = 1
let O: Int = 2

func matrixdraw() -> String {
    var lines: [String]
    let firstLine = "┏━━━" + String(repeating: "┳━━━", count: 2) + "┓"
    let verticalSpacingLine = String(repeating: "┃   ", count: 3) + "┃"
    var verticalSpacingLine1: String = verticalSpacingLine
    var verticalSpacingLine2: String = verticalSpacingLine
    var verticalSpacingLine3: String = verticalSpacingLine
    let verticalSeparatingLine = "┣━━━" + String(repeating: "╋━━━", count: 2) + "┫"
    let lastLine = "┗━━━" + String(repeating: "┻━━━", count: 2) + "┛"
        for m in 0...2 {
            if(m == 0){
                if(matrix[m][2] == X){
                    if(matrix[m][1] == 0){
                        if(matrix[m][0] == 0){
                            verticalSpacingLine1 = String(repeating: "┃   ", count: 2) + "┃ x " + "┃"
                            
                        } else  if(matrix[m][0] == X){
                            verticalSpacingLine1 = "┃ x " + "┃   " + "┃ x " + "┃"
                            
                        } else  if(matrix[m][0] == O){
                            verticalSpacingLine1 = "┃ o " + "┃   " + "┃ x " + "┃"
                            
                        }
                    } else if(matrix[m][1] == X){
                        if(matrix[m][0] == 0){
                            verticalSpacingLine1 = "┃   " + "┃ x " + "┃ x " + "┃"
                        } else if(matrix[m][0] == O){
                            verticalSpacingLine1 = "┃ o " + "┃ x " + "┃ x " + "┃"
                        }
                        
                    } else if(matrix[m][1] == O){
                            if(matrix[m][0] == 0){
                                verticalSpacingLine1 = "┃   " + "┃ o " + "┃ x " + "┃"
                                
                        } else if(matrix[m][0] == X){
                                verticalSpacingLine1 = "┃ x " + "┃ o " + "┃ x " + "┃"
                                
                        } else if(matrix[m][0] == O){
                                verticalSpacingLine1 = "┃ o " + "┃ o " + "┃ x " + "┃"
                               
                        }
                    }
                } else if(matrix[m][2] == O){
                    if(matrix[m][1] == 0){
                        if(matrix[m][0] == 0){
                            verticalSpacingLine1 = String(repeating: "┃   ", count: 2) + "┃ o " + "┃"
                            
                        } else if(matrix[m][0] == X){
                            verticalSpacingLine1 = "┃ x " + "┃   " + "┃ o " + "┃"
                        
                        } else if(matrix[m][0] == O){
                            verticalSpacingLine1 = "┃ o " + "┃   " + "┃ o " + "┃"
                            
                        }
                    } else if(matrix[m][1] == X){
                        if(matrix[m][0] == 0){
                            verticalSpacingLine1 = "┃   " + "┃ x " + "┃ o " + "┃"
                            
                        } else if(matrix[m][0] == X){
                            verticalSpacingLine1 = "┃ x " + "┃ x " + "┃ o " + "┃"
                            
                        } else if(matrix[m][0] == O){
                            verticalSpacingLine1 = "┃ o " + "┃ x " + "┃ o " + "┃"
                            
                        }
                    } else if(matrix[m][1] == O){
                        if(matrix[m][0] == X){
                            verticalSpacingLine1 = "┃ x " + "┃ o " + "┃ o " + "┃"
                            
                        } else if(matrix[m][0] == O){
                            verticalSpacingLine1 = "┃ o " + "┃ o " + "┃ o " + "┃"
                            
                        } else if(matrix[m][0] == 0){
                            verticalSpacingLine1 = "┃   " + "┃ o " + "┃ o " + "┃"
                            
                        }
                    }
                } else if(matrix[m][2] == 0){
                    if(matrix[m][1] == 0){
                        if(matrix[m][0] == X){
                            verticalSpacingLine1 = "┃ x " + "┃   " + "┃   " + "┃"
                            
                        } else if(matrix[m][0] == O){
                            verticalSpacingLine1 = "┃ o " + "┃   " + "┃   " + "┃"
                            
                        }
                    } else if(matrix[m][1] == X){
                        if(matrix[m][0] == O){
                            verticalSpacingLine1 = "┃ o " + "┃ x " + "┃   " + "┃"
                            
                        } else if(matrix[m][0] == 0){
                            verticalSpacingLine1 = "┃   " + "┃ x " + "┃   " + "┃"
                            
                        } else if(matrix[m][0] == X){
                            verticalSpacingLine1 = "┃ x " + "┃ x " + "┃   " + "┃"
                        }
                    } else if(matrix[m][1] == O){
                        if(matrix[m][0] == X){
                            verticalSpacingLine1 = "┃ x " + "┃ o " + "┃   " + "┃"
                          
                        } else if(matrix[m][0] == O){
                            verticalSpacingLine1 = "┃ o " + "┃ o " + "┃   " + "┃"
                            
                        } else if(matrix[m][0] == 0){
                            verticalSpacingLine1 = "┃   " + "┃ o " + "┃   " + "┃"
                        }
                    }
                }
            } else if(m == 1){
                if(matrix[m][2] == X){
                    if(matrix[m][1] == 0){
                        if(matrix[m][0] == 0){
                            verticalSpacingLine2 = String(repeating: "┃   ", count: 2) + "┃ x " + "┃"
                            
                        } else  if(matrix[m][0] == X){
                            verticalSpacingLine2 = "┃ x " + "┃   " + "┃ x " + "┃"
                            
                        } else  if(matrix[m][0] == O){
                            verticalSpacingLine2 = "┃ o " + "┃   " + "┃ x " + "┃"
                            
                        }
                    } else if(matrix[m][1] == X){
                        if(matrix[m][0] == O){
                            verticalSpacingLine2 = "┃ o " + "┃ x " + "┃ x " + "┃"
                        } else if(matrix[m][0] == 0){
                            verticalSpacingLine2 = "┃   " + "┃ x " + "┃ x " + "┃"
                        }
                    } else if(matrix[m][1] == O){
                            if(matrix[m][0] == 0){
                                verticalSpacingLine2 = "┃   " + "┃ o " + "┃ x " + "┃"
                                
                        } else if(matrix[m][0] == X){
                                verticalSpacingLine2 = "┃ x " + "┃ o " + "┃ x " + "┃"
                                
                        } else if(matrix[m][0] == O){
                                verticalSpacingLine2 = "┃ o " + "┃ o " + "┃ x " + "┃"
                                
                        }
                    }
                } else if(matrix[m][2] == O){
                    if(matrix[m][1] == 0){
                        if(matrix[m][0] == 0){
                            verticalSpacingLine2 = String(repeating: "┃   ", count: 2) + "┃ o " + "┃"
                            
                        } else if(matrix[m][0] == X){
                            verticalSpacingLine2 = "┃ x " + "┃   " + "┃ o " + "┃"
                            
                        } else if(matrix[m][0] == O){
                            verticalSpacingLine2 = "┃ o " + "┃   " + "┃ o " + "┃"
                            
                        }
                    } else if(matrix[m][1] == X){
                        if(matrix[m][0] == 0){
                            verticalSpacingLine2 = "┃   " + "┃ x " + "┃ o " + "┃"
                            
                        } else if(matrix[m][0] == X){
                            verticalSpacingLine2 = "┃ x " + "┃ x " + "┃ o " + "┃"
                            
                        } else if(matrix[m][0] == O){
                            verticalSpacingLine2 = "┃ o " + "┃ x " + "┃ o " + "┃"
                            
                        }
                    } else if(matrix[m][1] == O){
                        if(matrix[m][0] == X){
                            verticalSpacingLine2 = "┃ x " + "┃ o " + "┃ o " + "┃"
                            
                        } else if(matrix[m][0] == O){
                            verticalSpacingLine2 = "┃ o " + "┃ o " + "┃ o " + "┃"
                            
                        } else if(matrix[m][0] == 0){
                            verticalSpacingLine2 = "┃   " + "┃ o " + "┃ o " + "┃"
                            
                        }
                    }
                } else if(matrix[m][2] == 0){
                    if(matrix[m][1] == 0){
                        if(matrix[m][0] == X){
                            verticalSpacingLine2 = "┃ x " + "┃   " + "┃   " + "┃"
                            
                        } else if(matrix[m][1] == O){
                            verticalSpacingLine2 = "┃ o " + "┃   " + "┃   " + "┃"
                           
                        }
                    } else if(matrix[m][1] == X){
                        if(matrix[m][0] == O){
                            verticalSpacingLine2 = "┃ o " + "┃ x " + "┃   " + "┃"
                            
                        } else if(matrix[m][0] == 0){
                            verticalSpacingLine2 = "┃   " + "┃ x " + "┃   " + "┃"
                            
                        } else if(matrix[m][0] == X){
                            verticalSpacingLine2 = "┃ x " + "┃ x " + "┃   " + "┃"
                        }
                    } else if(matrix[m][1] == O){
                        if(matrix[m][0] == X){
                            verticalSpacingLine2 = "┃ x " + "┃ o " + "┃   " + "┃"
                            
                        } else if(matrix[m][0] == O){
                            verticalSpacingLine2 = "┃ o " + "┃ o " + "┃   " + "┃"
                            
                        } else if(matrix[m][0] == 0){
                            verticalSpacingLine2 = "┃   " + "┃ o " + "┃   " + "┃"
                        }
                    }
                }
            } else if(m == 2){
                if(matrix[m][2] == X){
                    if(matrix[m][1] == 0){
                        if(matrix[m][0] == 0){
                            verticalSpacingLine3 = String(repeating: "┃   ", count: 2) + "┃ x " + "┃"
                            
                        } else  if(matrix[m][0] == X){
                            verticalSpacingLine3 = "┃ x " + "┃   " + "┃ x " + "┃"
                            
                        } else  if(matrix[m][0] == O){
                            verticalSpacingLine3 = "┃ o " + "┃   " + "┃ x " + "┃"
                            
                        }
                    } else if(matrix[m][1] == X){
                        if(matrix[m][0] == O){
                            verticalSpacingLine3 = "┃ o " + "┃ x " + "┃ x " + "┃"
                        } else if(matrix[m][0] == 0){
                            verticalSpacingLine3 = "┃   " + "┃ x " + "┃ x " + "┃"
                        }
                    } else if(matrix[m][1] == O){
                            if(matrix[m][0] == 0){
                                verticalSpacingLine3 = "┃   " + "┃ o " + "┃ x " + "┃"
                                
                        } else if(matrix[m][0] == X){
                                verticalSpacingLine3 = "┃ x " + "┃ o " + "┃ x " + "┃"
                                
                        } else if(matrix[m][0] == O){
                                verticalSpacingLine3 = "┃ o " + "┃ o " + "┃ x " + "┃"
                                
                        }
                    }
                } else if(matrix[m][2] == O){
                    if(matrix[m][1] == 0){
                        if(matrix[m][0] == 0){
                            verticalSpacingLine3 = String(repeating: "┃   ", count: 2) + "┃ o " + "┃"
                            
                        } else if(matrix[m][0] == X){
                            verticalSpacingLine3 = "┃ x " + "┃   " + "┃ o " + "┃"
                            
                        } else if(matrix[m][0] == O){
                            verticalSpacingLine3 = "┃ o " + "┃   " + "┃ o " + "┃"
                            
                        }
                    } else if(matrix[m][1] == X){
                        if(matrix[m][0] == 0){
                            verticalSpacingLine3 = "┃   " + "┃ x " + "┃ o " + "┃"
                            
                        } else if(matrix[m][0] == X){
                            verticalSpacingLine3 = "┃ x " + "┃ x " + "┃ o " + "┃"
                            
                        } else if(matrix[m][0] == O){
                            verticalSpacingLine3 = "┃ o " + "┃ x " + "┃ o " + "┃"
                            
                        }
                    } else if(matrix[m][1] == O){
                        if(matrix[m][0] == X){
                            verticalSpacingLine3 = "┃ x " + "┃ o " + "┃ o " + "┃"
                            
                        } else if(matrix[m][0] == O){
                            verticalSpacingLine3 = "┃ o " + "┃ o " + "┃ o " + "┃"
                            
                        } else if(matrix[m][0] == 0){
                            verticalSpacingLine3 = "┃   " + "┃ o " + "┃ o " + "┃"
                            
                        }
                    }
                } else if(matrix[m][2] == 0){
                    if(matrix[m][1] == 0){
                        if(matrix[m][0] == X){
                            verticalSpacingLine3 = "┃ x " + "┃   " + "┃   " + "┃"
                            
                        } else if(matrix[m][0] == O){
                            verticalSpacingLine3 = "┃ o " + "┃   " + "┃   " + "┃"
                            
                        }
                    } else if(matrix[m][1] == X){
                        if(matrix[m][0] == O){
                            verticalSpacingLine3 = "┃ o " + "┃ x " + "┃   " + "┃"
                            
                        } else if(matrix[m][0] == 0){
                            verticalSpacingLine3 = "┃   " + "┃ x " + "┃   " + "┃"
                            
                        } else if(matrix[m][0] == X){
                            verticalSpacingLine3 = "┃ x " + "┃ x " + "┃   " + "┃"
                        }
                    } else if(matrix[m][1] == O){
                        if(matrix[m][0] == X){
                            verticalSpacingLine3 = "┃ x " + "┃ o " + "┃   " + "┃"
                            
                        } else if(matrix[m][0] == O){
                            verticalSpacingLine3 = "┃ o " + "┃ o " + "┃   " + "┃"
                           
                        } else if(matrix[m][0] == 0){
                            verticalSpacingLine3 = "┃   " + "┃ o " + "┃   " + "┃"
                           
                        }
                    }
                }
            }
        }
    lines = [firstLine, verticalSpacingLine1, verticalSeparatingLine, verticalSpacingLine2, verticalSeparatingLine, verticalSpacingLine3, lastLine]
    return lines.joined(separator: "\n")
}

func smart() -> Bool {
    var avoidlose: Bool = false
    if(matrix[0][0] == X && matrix[0][1] == X){
        if(matrix[0][2] == 0){
            matrix[0][2] = O
            avoidlose = true
            return avoidlose
        }
    }
    if(matrix[0][1] == X && matrix[0][2] == X){
        if(matrix[0][0] == 0){
            matrix[0][0] = O
            avoidlose = true
            return avoidlose
        }
    }
    if(matrix[0][0] == X && matrix[0][2] == X){
        if(matrix[0][1] == 0){
            matrix[0][1] = O
            avoidlose = true
            return avoidlose
        }
    }
    if(matrix[1][0] == X && matrix[1][1] == X){
        if(matrix[1][2] == 0){
            matrix[1][2] = O
            avoidlose = true
            return avoidlose
        }
    }
    if(matrix[1][1] == X && matrix[1][2] == X){
        if(matrix[1][0] == 0){
            matrix[1][0] = O
            avoidlose = true
            return avoidlose
        }
    }
    if(matrix[1][0] == X && matrix[1][2] == X){
        if(matrix[1][1] == 0){
            matrix[1][1] = O
            avoidlose = true
            return avoidlose
        }
    }
    if(matrix[2][0] == X && matrix[2][1] == X){
        if(matrix[2][2] == 0){
            matrix[2][2] = O
            avoidlose = true
            return avoidlose
        }
    }
    if(matrix[2][1] == X && matrix[2][2] == X){
        if(matrix[2][0] == 0){
            matrix[2][0] = O
            avoidlose = true
            return avoidlose
        }
    }
    if(matrix[2][0] == X && matrix[2][2] == X){
        if(matrix[2][1] == 0){
            matrix[2][1] = O
            avoidlose = true
            return avoidlose
        }
    }
    if(matrix[0][0] == X && matrix[1][0] == X){
        if(matrix[2][0] == 0){
            matrix[2][0] = O
            avoidlose = true
            return avoidlose
        }
    }
    if(matrix[1][0] == X && matrix[2][0] == X){
        if(matrix[0][0] == 0){
            matrix[0][0] = O
            avoidlose = true
            return avoidlose
        } else {
            avoidlose = false
        }
    }
    if(matrix[0][0] == X && matrix[2][0] == X){
        if(matrix[1][0] == 0){
            matrix[1][0] = O
            avoidlose = true
            return avoidlose
        }
    }
    if(matrix[0][1] == X && matrix[1][1] == X){
        if(matrix[2][1] == 0){
            matrix[2][1] = O
            avoidlose = true
            return avoidlose
        }
    }
    if(matrix[1][1] == X && matrix[2][1] == X){
        if(matrix[0][1] == 0){
            matrix[0][1] = O
            avoidlose = true
            return avoidlose
        }
    }
    if(matrix[0][1] == X && matrix[2][1] == X){
        if(matrix[1][1] == 0){
            matrix[1][1] = O
            avoidlose = true
            return avoidlose
        }
    }
    if(matrix[0][2] == X && matrix[1][2] == X){
        if(matrix[2][2] == 0){
            matrix[2][2] = O
            avoidlose = true
            return avoidlose
        }
    }
    if(matrix[1][2] == X && matrix[2][2] == X){
        if(matrix[0][2] == 0){
            matrix[0][2] = O
            avoidlose = true
            return avoidlose
        }
    }
    if(matrix[0][2] == X && matrix[2][2] == X){
        if(matrix[1][2] == 0){
            matrix[1][2] = O
            avoidlose = true
            return avoidlose
        }
    }
    if(matrix[0][0] == X && matrix[1][1] == X){
        if(matrix[2][2] == 0){
            matrix[2][2] = O
            avoidlose = true
            return avoidlose
        }
    }
    if(matrix[1][1] == X && matrix[2][2] == X){
        if(matrix[0][0] == 0){
            matrix[0][0] = O
            avoidlose = true
            return avoidlose
        }
    }
    if(matrix[0][0] == X && matrix[2][2] == X){
        if(matrix[1][1] == 0){
            matrix[1][1] = O
            avoidlose = true
            return avoidlose
        }
    }
    if(matrix[0][2] == X && matrix[1][1] == X){
        if(matrix[2][0] == 0){
            matrix[2][0] = O
            avoidlose = true
            return avoidlose
        }
    }
    if(matrix[1][1] == X && matrix[2][0] == X){
        if(matrix[0][2] == 0){
            matrix[0][2] = O
            avoidlose = true
            return avoidlose
        }
    }
    if(matrix[0][2] == X && matrix[2][0] == X){
        if(matrix[1][1] == 0){
            matrix[1][1] = O
            avoidlose = true
            return avoidlose
        }
    }
    return avoidlose
}
func playforWin() -> String{
    let finishtext: String = "Game Over. You Lose"
    if(matrix[0][0] == O && matrix[0][1] == O){
            if(matrix[0][2] == 0){
                matrix[0][2] = O
                return finishtext
            }
        }
    if(matrix[0][1] == O && matrix[0][2] == O){
            if(matrix[0][0] == 0){
                matrix[0][0] = O
                return finishtext
            }
        }
    if(matrix[0][0] == O && matrix[0][2] == O){
            if(matrix[0][1] == 0){
                matrix[0][1] = O
                return finishtext
            }
        }
    if(matrix[1][0] == O && matrix[1][1] == O){
            if(matrix[1][2] == 0){
                matrix[1][2] = O
                return finishtext
            }
        }
    if(matrix[1][1] == O && matrix[1][2] == O){
            if(matrix[1][0] == 0){
                matrix[1][0] = O
                return finishtext
            }
        }
    if(matrix[1][0] == O && matrix[1][2] == O){
            if(matrix[1][1] == 0){
                matrix[1][1] = O
                return finishtext
            }
        }
    if(matrix[2][0] == O && matrix[2][1] == O){
            if(matrix[2][2] == 0){
                matrix[2][2] = O
                return finishtext
            }
        }
    if(matrix[2][1] == O && matrix[2][2] == O){
            if(matrix[2][0] == 0){
                matrix[2][0] = O
                return finishtext
            }
        }
    if(matrix[2][0] == O && matrix[2][2] == O){
            if(matrix[2][1] == 0){
                matrix[2][1] = O
                return finishtext
            }
        }
    if(matrix[0][0] == O && matrix[1][0] == O){
            if(matrix[2][0] == 0){
                matrix[2][0] = O
                return finishtext
            }
        }
    if(matrix[1][0] == O && matrix[2][0] == O){
            if(matrix[0][0] == 0){
                matrix[0][0] = O
                return finishtext
            }
        }
    if(matrix[0][0] == O && matrix[2][0] == O){
            if(matrix[1][0] == 0){
                matrix[1][0] = O
                return finishtext
            }
        }
    if(matrix[0][1] == O && matrix[1][1] == O){
            if(matrix[2][1] == 0){
                matrix[2][1] = O
                return finishtext
            }
        }
    if(matrix[1][1] == O && matrix[2][1] == O){
            if(matrix[0][1] == 0){
                matrix[0][1] = O
                return finishtext
            }
        }
    if(matrix[0][1] == O && matrix[2][1] == O){
            if(matrix[1][1] == 0){
                matrix[1][1] = O
                return finishtext
            }
        }
    if(matrix[0][2] == O && matrix[1][2] == O){
            if(matrix[2][2] == 0){
                matrix[2][2] = O
                return finishtext
            }
        }
    if(matrix[1][2] == O && matrix[2][2] == O){
            if(matrix[0][2] == 0){
                matrix[0][2] = O
                return finishtext
            }
        }
    if(matrix[0][2] == O && matrix[2][2] == O){
            if(matrix[1][2] == 0){
                matrix[1][2] = O
                return finishtext
            }
        }
    if(matrix[0][0] == O && matrix[1][1] == O){
            if(matrix[2][2] == 0){
                matrix[2][2] = O
                return finishtext
            }
        }
    if(matrix[1][1] == O && matrix[2][2] == O){
            if(matrix[0][0] == 0){
                matrix[0][0] = O
                return finishtext
            }
        }
    if(matrix[0][0] == O && matrix[2][2] == O){
            if(matrix[1][1] == 0){
                matrix[1][1] = O
                return finishtext
            }
        }
    if(matrix[0][2] == O && matrix[1][1] == O){
               if(matrix[2][0] == 0){
                   matrix[2][0] = O
                   return finishtext
               }
        }
    if(matrix[1][1] == O && matrix[2][0] == O){
                if(matrix[0][2] == 0){
                    matrix[0][2] = O
                    return finishtext
                }
        }
    if(matrix[0][2] == O && matrix[2][0] == O){
                if(matrix[1][1] == 0){
                    matrix[1][1] = O
                    return finishtext
                }
        }
    return ""
}
func input() -> (i: Int, j: Int) {
    var i: Int
    var j: Int
    repeat  {
        print("please input i and j coordinates (indexing starts from 0)", terminator: "\n" )
        print("i:", terminator: " ")
        i = Int(readLine()!)!
        print("j:", terminator: " ")
        j = Int(readLine()!)!
    } while i < 0 || j < 0 || i > 2 || j > 2 || matrix[i][j] == X || matrix[i][j] == O
    return (i, j)
}
//1st Move
var seeposition = matrixdraw()
print(seeposition)
var result = input()
var resulti = result.i
var resultj = result.j
matrix[resulti][resultj] = X
if (matrix[1][1] == X) {
  let y: Int = Int.random(in: 1...100)
  switch y {
    case 1...25:
      matrix[0][0] = O
    case 26...50:
      matrix[0][2] = O
    case 51...75:
      matrix[2][0] = O
    case 76...100:
      matrix[2][2] = O
    default:
      print("something is wrong")
  }
} else {
    matrix[1][1] = O
}

//2nd Move, if x is in center
seeposition = matrixdraw()
print(seeposition)
result = input()
resulti = result.i
resultj = result.j
matrix[resulti][resultj] = X
var a: [Int] = [0, 2]
var smartO = smart()
if(smartO == false){
    if(matrix[1][1] == X){
        for k in 0...1 {
            let x = a[k]
            if (matrix[1][x] == X) {
                matrix[1][2-x] = O
                break
            }
            else if (matrix[x][1] == X) {
                matrix[2-x][1] = O
                break
            }
            else if(matrix[x][x] == X) {
                if(matrix[2-x][2-x] != 0){
                    let y = Int.random(in: 1...50)
                    switch y {
                        case 1...25:
                            matrix[2-x][x] = O
                        case 26...50:
                            matrix[x][2-x] = O
                        default:
                            print("something is wrong")
                        }
                    break
                } else{
                    matrix[2-x][2-x] = O
                    break
                }
            }
            else if(matrix[x][2-x] == X){
                if(matrix[2-x][x] != 0){
                    let y = Int.random(in: 1...50)
                    switch y {
                        case 1...25:
                            matrix[x][x] = O
                        case 26...50:
                            matrix[2-x][2-x] = O
                        default:
                            print("something is wrong")
                        }
                    break
                } else {
                    matrix[2-x][x] = O
                    break
                }
            }
        }
    } else {
//2nd Move, when x isn't in center
        for k in 0...1 {
            let x = a[k]
            if(matrix[x][x] == X){
                if(matrix[2-x][1] == X){
                    let y = Int.random(in: 1...100)
                    switch y{
                        case 1...25:
                            matrix[1][0] = O
                        case 25...50:
                            matrix[2-x][x] = O
                        case 51...75:
                            matrix[1][2] = O
                        case 76...100:
                            matrix[2-x][2-x] = O
                        default:
                            print("something is wrong")
                    }
                  break
                } else if(matrix[1][2-x] == X){
                    let y = Int.random(in: 1...100)
                    switch y{
                        case 1...25:
                            matrix[0][1] = O
                        case 25...50:
                            matrix[x][2-x] = O
                        case 51...75:
                            matrix[2][1] = O
                        case 76...100:
                            matrix[2-x][2-x] = O
                        default:
                            print("something is wrong")
                        }
                   break
                } else if(matrix[2-x][2-x] == X){
                    let y = Int.random(in: 1...100)
                    switch y {
                        case 1...25:
                            matrix[1][0] = O
                        case 25...50:
                            matrix[2][1] = O
                        case 51...75:
                            matrix[1][2] = O
                        case 76...100:
                            matrix[0][1] = O
                        default:
                            print("something is wrong")
                        }
                    break
                }
            } else if(matrix[x][1] == X){
                if(matrix[1][x] == X){
                    let y = Int.random(in: 1...99)
                    switch y {
                        case 1...33:
                            matrix[x][x] = O
                        case 34...66:
                            matrix[x][2-x] = O
                        case 67...99:
                            matrix[2-x][x] = O
                        default:
                            print("something is wrong")
                        }
                    break
                } else if(matrix[1][2-x] == X){
                    let y = Int.random(in: 1...99)
                    switch y {
                        case 1...33:
                            matrix[x][x] = O
                        case 34...66:
                            matrix[x][2-x] = O
                        case 67...99:
                            matrix[2-x][2-x] = O
                        default:
                            print("something is wrong")
                        }
                    break
                } else if(matrix[2-x][x] == X){
                    let y = Int.random(in: 1...99)
                    switch y {
                        case 1...25:
                            matrix[x][x] = O
                        case 26...50:
                            matrix[x][2-x] = O
                        case 51...75:
                            matrix[1][2] = O
                        case 76...99:
                            matrix[1][0] = O
                        default:
                            print("something is wrong")
                        }
                    break
                } else if(matrix[x][2-x] == X){
                    let y = Int.random(in: 1...99)
                    switch y {
                        case 1...25:
                            matrix[x][x] = O
                        case 26...50:
                            matrix[1][0] = O
                        case 51...75:
                            matrix[1][2] = O
                        case 76...99:
                            matrix[x][2-x] = O
                        default:
                            print("something is wrong")
                        }
                    break
                } else if(matrix[2-x][1] == X){
                    let y = Int.random(in: 1...99)
                    switch y {
                        case 1...25:
                            matrix[0][0] = O
                        case 26...50:
                            matrix[2][0] = O
                        case 51...75:
                            matrix[0][2] = O
                        case 76...99:
                            matrix[2][2] = O
                        default:
                            print("something is wrong")
                        }
                    break
                }
            } else if(matrix[x][2-x] == X){
                    if(matrix[1][x] == X){
                        let y = Int.random(in: 1...99)
                        switch y {
                            case 1...25:
                                matrix[x][2-x] = O
                            case 26...50:
                                matrix[0][1] = O
                            case 51...75:
                                matrix[2][1] = O
                            case 76...99:
                                matrix[2-x][2-x] = O
                            default:
                                print("something is wrong")
                            }
                        break
                    } else if(matrix[2-x][1] == X){
                        let y = Int.random(in: 1...99)
                        switch y {
                            case 1...25:
                                matrix[2-x][x] = O
                            case 26...50:
                                matrix[1][0] = O
                            case 51...75:
                                matrix[1][2] = O
                            case 76...99:
                                matrix[2-x][2-x] = O
                            default:
                                print("something is wrong")
                            }
                        break
                    } else if(matrix[2-x][x] == X){
                            let y = Int.random(in: 1...99)
                            switch y {
                                case 1...25:
                                    matrix[0][1] = O
                                case 26...50:
                                    matrix[2][1] = O
                                case 51...75:
                                    matrix[1][2] = O
                                case 76...99:
                                    matrix[1][0] = O
                                default:
                                    print("something is wrong")
                                }
                        break
                     }
            } else if(matrix[1][x] == X){
                if(matrix[x][1] == X){
                    let y = Int.random(in: 1...99)
                    switch y {
                        case 1...33:
                            matrix[x][x] = O
                        case 34...66:
                            matrix[x][2-x] = O
                        case 67...99:
                            matrix[2-x][x] = O
                        default:
                            print("something is wrong")
                        }
                    break
                } else if([0][x] == X){
                    let y = Int.random(in: 1...99)
                     switch y {
                         case 1...25:
                             matrix[0][1] = O
                         case 26...50:
                             matrix[2][1] = O
                         case 51...75:
                             matrix[x][x] = O
                         case 76...99:
                             matrix[2-x][x] = O
                         default:
                             print("something is wrong")
                         }
                    break
                } else if(matrix[2-x][1] == X){
                    let y = Int.random(in: 1...99)
                    switch y {
                        case 1...33:
                            matrix[x][x] = O
                        case 34...66:
                            matrix[2-x][x] = O
                        case 67...99:
                            matrix[2-x][2-x] = O
                        default:
                            print("something is wrong")
                        }
                    break
                } else if(matrix[2][2-x] == X){
                    let y = Int.random(in: 1...99)
                     switch y {
                         case 1...25:
                             matrix[0][1] = O
                         case 26...50:
                             matrix[2][1] = O
                         case 51...75:
                             matrix[x][x] = O
                         case 76...99:
                             matrix[2-x][x] = O
                         default:
                             print("something is wrong")
                         }
                    break
                } else if(matrix[1][2-x] == X){
                    let y = Int.random(in: 1...100)
                    switch y {
                        case 1...25:
                            matrix[0][0] = O
                        case 26...50:
                            matrix[2][0] = O
                        case 51...75:
                            matrix[0][2] = O
                        case 76...100:
                            matrix[2][2] = O
                        default:
                            print("something is wrong")
                        }
                    break
                }
            }
        }
    }
}
//3rd move
seeposition = matrixdraw()
print(seeposition)
result = input()
resulti = result.i
resultj = result.j
matrix[resulti][resultj] = X
var won = playforWin()
if(won == "Game Over. You Lose"){
    seeposition = matrixdraw()
    print(seeposition)
    print(won)
} else{
    smartO = smart()
    if(smartO == false){
        for k in 0...1 {
            let x = a[k]
            if(matrix[x][x] == X){
                if(matrix[1][2-x] == X && matrix[2-x][1] == X){
                    let y = Int.random(in: 1...100)
                    switch y {
                        case 1...25:
                            matrix[x][1] = O
                        case 26...50:
                            matrix[2][0] = O
                        case 51...75:
                            matrix[0][2] = O
                        case 76...100:
                            matrix[1][x] = O
                        default:
                            print("something is wrong")
                        }
                    break
                } else if(matrix[x][2-x] == X && matrix[2-x][1] == X) {
                    let y = Int.random(in: 1...50)
                    switch y {
                        case 1...25:
                            matrix[1][2] = O
                        case 26...50:
                            matrix[1][0] = O
                        default:
                            print("something is wrong")
                        }
                    break
                } else if(matrix[1][2-x] == X && matrix[2-x][x] == X){
                    let y = Int.random(in: 1...50)
                    switch y {
                        case 1...25:
                            matrix[0][1] = O
                        case 26...50:
                            matrix[2][1] = O
                        default:
                            print("something is wrong")
                        }
                }
            } else if(matrix[x][1] == X){
                if(matrix[1][2-x] == X && matrix[2-x][x] == X && matrix[x][x] == O){
                    let y = Int.random(in: 1...100)
                    switch y {
                        case 1...25:
                            matrix[x][x] = O
                        case 26...50:
                            matrix[1][x] = O
                        case 51...75:
                            matrix[2-x][1] = O
                        case 76...100:
                            matrix[2-x][2-x] = O
                        default:
                            print("something is wrong")
                        }
                    break
                } else if(matrix[1][2-x] == X && matrix[2-x][x] == X && matrix[1][x] == O){
                    let y = Int.random(in: 1...50)
                    switch y {
                        case 1...25:
                            matrix[x][2-x] = O
                        case 26...50:
                            matrix[2-x][2-x] = O
                        default:
                            print("something is wrong")
                        }
                    break
                } else if(matrix[1][2-x] == X && matrix[2-x][x] == X && matrix[1][2-x] == O){
                    let y = Int.random(in: 1...50)
                    switch y {
                        case 1...25:
                            matrix[x][x] = O
                        case 26...50:
                            matrix[2-x][x] = O
                        default:
                            print("something is wrong")
                        }
                    break
                }
            } else if(matrix[x][2-x] == X){
                if(matrix[1][x] == X && matrix[2-x][1] == X){
                    let y = Int.random(in: 1...100)
                    switch y {
                        case 1...25:
                            matrix[x][x] = O
                        case 26...50:
                            matrix[x][1] = O
                        case 51...75:
                            matrix[1][2-x] = O
                        case 76...100:
                            matrix[2-x][2-x] = O
                        default:
                            print("something is wrong")
                        }
                    break
                }
            } else if(matrix[1][x] == X){
                if(matrix[x][1] == X && matrix[2-x][2-x] == X && matrix[x][x] == O){
                    let y = Int.random(in: 1...100)
                               switch y {
                                   case 1...25:
                                       matrix[x][2-x] = O
                                   case 26...50:
                                       matrix[x][1] = O
                                   case 51...75:
                                       matrix[1][2-x] = O
                                   case 76...100:
                                       matrix[2-x][1] = O
                                   default:
                                       print("something is wrong")
                                }
                        break
                } else if(matrix[x][1] == X && matrix[2-x][2-x] == X && matrix[2-x][1] == O){
                        let y = Int.random(in: 1...50)
                        switch y {
                            case 1...25:
                                matrix[x][2-x] = O
                            case 26...50:
                                matrix[x][x] = O
                            default:
                                print("something is wrong")
                            }
                        break
                } else if(matrix[x][1] == X && matrix[2-x][2-x] == X && matrix[x][1] == O){
                    let y = Int.random(in: 1...50)
                    switch y {
                        case 1...25:
                            matrix[2-x][x] = O
                        case 26...50:
                            matrix[2-x][2-x] = O
                        default:
                            print("something is wrong")
                        }
                    break
                }
            } else if(matrix[1][1] == X){
                if(matrix[1][x] == X && matrix[2-x][2-x] == X){
                    let y = Int.random(in: 1...100)
                           switch y {
                               case 1...25:
                                   matrix[0][1] = O
                               case 26...50:
                                   matrix[0][2] = O
                               case 51...75:
                                   matrix[2][0] = O
                               case 76...100:
                                   matrix[2][1] = O
                               default:
                                   print("something is wrong")
                            }
                    break
                } else if(matrix[x][1] == X && matrix[2-x][2-x] == X){
                    let y = Int.random(in: 1...100)
                                     switch y {
                                         case 1...25:
                                             matrix[1][0] = O
                                         case 26...50:
                                             matrix[0][2] = O
                                         case 51...75:
                                             matrix[2][0] = O
                                         case 76...100:
                                             matrix[1][2] = O
                                         default:
                                             print("something is wrong")
                                      }
                              break
                } else if(matrix[x][1] == X && matrix[2-x][x] == X){
                    let y = Int.random(in: 1...100)
                                     switch y {
                                         case 1...25:
                                             matrix[0][0] = O
                                         case 26...50:
                                             matrix[1][2] = O
                                         case 51...75:
                                             matrix[1][0] = O
                                         case 76...100:
                                             matrix[2][2] = O
                                         default:
                                             print("something is wrong")
                                      }
                              break
                } else if(matrix[1][2-x] == X && matrix[2-x][x] == X){
                    let y = Int.random(in: 1...100)
                    switch y {
                        case 1...25:
                            matrix[0][0] = O
                        case 26...50:
                            matrix[0][1] = O
                        case 51...75:
                            matrix[2][1] = O
                        case 76...100:
                            matrix[2][2] = O
                        default:
                            print("something is wrong")
                        }
                    break
                }
            }
        }
    }

//4th Move
    seeposition = matrixdraw()
    print(seeposition)
    result = input()
    resulti = result.i
    resultj = result.j
    matrix[resulti][resultj] = X
    won = playforWin()
    if(won == "Game Over. You Lose"){
        seeposition = matrixdraw()
        print(seeposition)
        print(won)
    } else{
        smartO = smart()
        if(smartO == false){
            for h in 0...2{
                for w in 0...2{
                    if(matrix[h][w] == 0){
                        matrix[h][w] = O
                        break
                    }
                }
            }
        }
        seeposition = matrixdraw()
        print(seeposition)
        result = input()
        resulti = result.i
        resultj = result.j
        matrix[resulti][resultj] = X
        seeposition = matrixdraw()
        print(seeposition)
        print("Game Over. Draw")
    }
}