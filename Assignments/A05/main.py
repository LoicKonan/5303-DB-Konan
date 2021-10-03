class Index_Of_Coincidence(object):
    def _initialize_instance_fields(self):
        self.IOC = 0
        self.Size = 0
        self.Sequence_Text_Length = 0
        self.CipherText = ""
        self.ShiftedText = ""
        self.Sequences = []

    def __init__(self):
        self._initialize_instance_fields()

        self.Size = 16
        self.IOC = 2
        self.Sequence_Text_Length = 0

    def __init__(self, Z):
        self._initialize_instance_fields()

        self.Size = 16
        self.IOC = Z
        self.Sequence_Text_Length = 0


class Dictionary(object):
    def __init__(self):
        ## self.__input = ifstream()  Idk bout this but we will see
        self.__count = 0
        self.__Words = []
        self.__Used = []

        Temp = None
        self.__count = 0

        self.__input.open("Words.txt")

        while not self.__input.eof():
            self.__input >> Temp
            self.__Words.append(Temp)
            self.__Used.append(0)
            self.__count += 1


class HashTable(object):
    def __init__(self):
        self.__HT = []
        self.__Lookup = Dictionary()
        self.__TableSize = 0
        self.__Count = 0
        # self.__H1 = Hash()  
        self.__maxChainLength = 0
        self.__avgChainLength = 0
        self.__numEmptySlots = 0

        self.__TableSize = 168451  # Prime Number with an appropriate load factor relative to the
        # size of our data and not near a power of two.
        self.__HT.resize(self.__TableSize)
        self.__maxChainLength = 0
        self.__avgChainLength = 0
        self.__numEmptySlots = 0
        self.__Count = 0


class Dictionary_Attack(object):
    def __init__(self):
        self.Decrypted = ""
        self.Key = ""
        self.Key_Size = 0

        self.Decrypted = ""


class Vigenere(object):
    def __init__(self):
        self.CipherText = ""
        self.Plaintext = []
        self.Key = ""
        self.IOC_Value = 0
        self.Key_Length = 0
        self.IOC_Order = []
        self.Key_Order = []
        self.Narrowed = []
        self.Dictionary_Lookup = HashTable()


class CryptoMath(object):
    def __init__(self):
        self.Alphabet = ""
        self.Sigma = 0
        self.BigN = 0
        self.Stack_Size = 0
        self.Frequency = [0 for _ in range(26)]

        self.Alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
        self.Sigma = 0
        self.BigN = 0
        self.Stack_Size = 0

        for i in range(0, 26):
            self.Frequency[i] = 0
