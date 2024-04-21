import { View, Text, TouchableOpacity, Image } from "react-native";
import styles from "./styles";

export default function UserLine(){
   return(
    <View style={styles.line}>
        <Text>CUZINHO</Text>
        
        <View style={styles.actions}>
            <TouchableOpacity style={styles.add}>
                <Image style={styles.addIcon} source={require('../../assets/mais.png')}/>
            </TouchableOpacity>

            <TouchableOpacity style={styles.add}>
                <Image style={styles.addIcon} source={require('../../assets/mais.png')}/>
            </TouchableOpacity>

            <TouchableOpacity style={styles.add}>
                <Image style={styles.addIcon} source={require('../../assets/mais.png')}/>
            </TouchableOpacity>
        </View>
        


    </View>
   );
}