package pe.hf.black20;

import android.app.Activity;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.os.Bundle;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import b7.C0514f;
import b7.N;
import java.util.Locale;
import pe.hf.black20.util.Methods;

/* JADX INFO: loaded from: classes2.dex */
public class LanguagePickerActivity extends Activity {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public SharedPreferences f28548G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final LanguagePickerActivity f28549H = this;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public String[] f28550I = null;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public ListView f28551J;

    public final void a() {
        Configuration configuration = getBaseContext().getResources().getConfiguration();
        Locale locale = new Locale(this.f28548G.getString("language", null));
        Locale.setDefault(locale);
        configuration.locale = locale;
        getBaseContext().getResources().updateConfiguration(configuration, getBaseContext().getResources().getDisplayMetrics());
    }

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_language_picker);
        ImageView imageView = (ImageView) findViewById(R.id.img_bg);
        LanguagePickerActivity languagePickerActivity = this.f28549H;
        if (Methods.R(languagePickerActivity)) {
            imageView.setBackgroundResource(R.drawable.corner_shadow);
        } else {
            imageView.setBackgroundResource(R.drawable.bg2);
        }
        this.f28548G = languagePickerActivity.getSharedPreferences("pe.hf.black20", 0);
        this.f28551J = (ListView) findViewById(R.id.listView);
        this.f28550I = new String[]{"ENGLISH (US)", "عربى (AR)", "বাংলা (BN)", "中文 (ZH)", "FRANÇAISE (FR)", "DEUTSCHE (DE)", "हिन्दी (HI)", "ITALIANA (IT)", "HRVATSKI (HR)", "മലയാളം (ML)", "POLSKI (PL)", "PORTUGUESA (PT)(BR)", "ESPAÑOLA (ES)", "ROMÂNĂ (RO)", "RUSSAIN (RU)", "SVENSKA (SV)", "TURKISH (TR)"};
        this.f28551J.setAdapter((ListAdapter) new N(this.f28549H, this.f28550I, 0));
        this.f28551J.setOnItemClickListener(new C0514f(this, 10));
    }
}
