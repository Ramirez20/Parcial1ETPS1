package sv.edu.parcial1;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;

public class calculoDeIMC extends AppCompatActivity {

    public EditText edPersonaPeso, edPersonaAltura;
    public Button btnCalcularImc;
    public TextView tvResultado;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_calculo_de_imc);

        edPersonaPeso = findViewById(R.id.edtPeso);
        edPersonaAltura = findViewById(R.id.edtAltura);
        btnCalcularImc = findViewById(R.id.btnCalcular);
        tvResultado = findViewById(R.id.tvxResultado);
    }

    public void result (View v) {
        try {
            double peso = Double.parseDouble(edPersonaPeso.getText().toString());
            double altura = Double.parseDouble(edPersonaAltura.getText().toString());
            double imc = peso / (altura * altura);
            String mensaje = "";

            if (imc < 10.5) {
                mensaje = "Críticamente Bajo de Peso";
            } else if (imc < 15.9) {
                mensaje = "Severamente Bajo de Peso";
            } else if (imc < 18.5) {
                mensaje = "Bajo de Peso";
            } else if (imc < 25) {
                mensaje = "Normal (Peso Saludable)";
            } else if (imc < 30) {
                mensaje = "Sobrepeso";
            } else if (imc < 35) {
                mensaje = "Obesidad Clase 1 - Moderadamente Obeso";
            } else if (imc < 40) {
                mensaje = "Obesidad Clase 2 - Severamente Obeso";
            } else if (imc >= 40 && imc <= 50) {
                mensaje = "Obesidad Clase 3 - Críticamente Obeso";
            } else {
                mensaje = "El resultado está fuera del rango esperado";
            }

            tvResultado.setText("Tu IMC es: " + String.format("%.2f", imc) + "\n" + mensaje);
        }
        catch (Exception e){
            Toast.makeText(this, "Porfavor ingrese datos correctos.", Toast.LENGTH_SHORT).show();
        }
    }
    }

