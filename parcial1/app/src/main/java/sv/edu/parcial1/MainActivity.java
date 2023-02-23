package sv.edu.parcial1;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.content.Intent;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {

    public EditText edtUsuario, edtContra;
    public Button btIngresar;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        edtUsuario=findViewById(R.id.edtUsername);
        edtContra=findViewById(R.id.edtPassword);
        btIngresar=findViewById(R.id.btnLogin);
    }

    public void login (View v){
            String usuario = edtUsuario.getText().toString();
            String password = edtContra.getText().toString();

            if (usuario.equals("parcialETps1") && password.equals("p4rC14l#tp$")) {
                Intent intent = new Intent(this, calculoDeIMC.class);
                startActivity(intent);
            } else {
                Toast.makeText(this, "Contraseña y usuario no son correctos", Toast.LENGTH_SHORT).show();
            }
    }
}