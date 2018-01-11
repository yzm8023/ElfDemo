package com.example.elfdemo;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity implements View.OnClickListener{

    private static final String TAG = "ElfDemo";

    private Button mBtn;

    private ElfHooker mElfHooker;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        mBtn = (Button)findViewById(R.id.hook_btn);
        mBtn.setOnClickListener(this);
        mElfHooker = new ElfHooker();
    }

    @Override
    public void onClick(View view) {
        Log.d(TAG,"============onClick===========");
        mElfHooker.setHook();
    }
}
