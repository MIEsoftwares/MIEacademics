import { View, Text } from "react-native";
import { StyleSheet } from "react-native";
import { height, width } from "../src/constants/dimensions";
import UserLine from "../src/components/UserLine";

export default function UserView(){
    return(
        <View style={styles.background}>
            <View style={styles.usersContent}>
                <UserLine></UserLine>
            </View>
        </View>
    )
}

const styles = StyleSheet.create({
    background: {
        backgroundColor: '#1f2c56',
        height: height,
        width: width,
        alignItems: 'center'
    },
    usersContent: {
        backgroundColor: 'white',
        height: height,
        width: width*0.75,
        
    },
})