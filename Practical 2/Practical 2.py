
def TOH(n,source,destination,mid):
  if n==1:
    print("Move disc 1 from ",source," to ",destination)
    return
  TOH(n-1,source,mid,destination)
  print("Move disc ",n," from ",source," to",destination)
  TOH(n-1,mid,destination,source)
 
n=int(input("Enter the number of discs : "))
TOH(n,"A","B","C")
