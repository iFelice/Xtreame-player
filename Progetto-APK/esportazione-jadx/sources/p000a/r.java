package p000a;

import U1.f;
import android.content.SharedPreferences;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.TextView;
import b7.U;
import c7.d;
import com.google.ads.interactivemedia.v3.internal.zzadf;
import com.google.android.gms.internal.ads.Zo;
import java.util.HashMap;
import p021c4.D;
import p021c4.E;
import pe.hf.black20.MultiScreenActivityEXO;
import pe.hf.black20.OtherSettingsActivity;

/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class r {
    public static /* synthetic */ int a(int i8) {
        if (i8 == 1) {
            return 0;
        }
        if (i8 == 2) {
            return 1;
        }
        if (i8 == 3) {
            return 1000;
        }
        throw null;
    }

    public static /* synthetic */ int b(int i8) {
        if (i8 == 1) {
            return 0;
        }
        if (i8 == 2) {
            return 1;
        }
        if (i8 == 3) {
            return 2;
        }
        if (i8 == 4) {
            return 4;
        }
        throw null;
    }

    public static int c(int i8, int i9, int i10) {
        return zzadf.zzz(i8) + i9 + i10;
    }

    public static View d(OtherSettingsActivity otherSettingsActivity, int i8, TextView textView, View view, int i9) {
        textView.setText(otherSettingsActivity.getString(i8));
        return view.findViewById(i9);
    }

    public static D e(int i8, String str, Boolean bool, boolean z7) {
        return E.a(str, bool, new f(i8), z7);
    }

    public static String f(String str, int i8) {
        return str + i8;
    }

    public static String g(String str, String str2, String str3) {
        return str + str2 + str3;
    }

    public static String h(StringBuilder sb, int i8, String str) {
        sb.append(i8);
        sb.append(str);
        return sb.toString();
    }

    public static String i(StringBuilder sb, long j8, String str) {
        sb.append(j8);
        sb.append(str);
        return sb.toString();
    }

    public static String j(StringBuilder sb, String str, String str2) {
        sb.append(str);
        sb.append(str2);
        return sb.toString();
    }

    public static StringBuilder k(String str, int i8, String str2) {
        StringBuilder sb = new StringBuilder(str);
        sb.append(i8);
        sb.append(str2);
        return sb;
    }

    public static StringBuilder l(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(str2);
        return sb;
    }

    public static HashMap m(String str, String str2, String str3, String str4) {
        HashMap map = new HashMap();
        map.put(str, str2);
        map.put(str3, str4);
        return map;
    }

    public static void n(SharedPreferences sharedPreferences, String str, String str2) {
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        editorEdit.putString(str, str2);
        editorEdit.apply();
        editorEdit.commit();
    }

    public static void o(d dVar, String str, String str2, String[] strArr) {
        SQLiteDatabase writableDatabase = dVar.getWritableDatabase();
        writableDatabase.delete(str, str2, strArr);
        writableDatabase.close();
    }

    public static void p(String str, int i8, String str2) {
        Zo.f(str2, str + i8);
    }

    public static void q(String str, String str2, String str3) {
        Log.d(str3, str + str2);
    }

    public static void r(MultiScreenActivityEXO multiScreenActivityEXO, int i8, ImageButton imageButton) {
        imageButton.setBackground(multiScreenActivityEXO.getResources().getDrawable(i8));
    }

    public static boolean s(EditText editText) {
        return TextUtils.isEmpty(editText.getText().toString());
    }

    public static int t(int i8, int i9, int i10) {
        int i11 = i8 / i9;
        return i11 + i11 + i10;
    }

    public static void u(String str, String str2, String str3) {
        Zo.f(str3, str2.concat(String.valueOf(str)));
    }

    public static void v(MultiScreenActivityEXO multiScreenActivityEXO, int i8, ImageButton imageButton) {
        imageButton.setOnFocusChangeListener(new U(multiScreenActivityEXO, i8));
    }

    public static /* synthetic */ String w(int i8) {
        if (i8 != 1) {
            return i8 != 2 ? "null" : "OUTBOUND";
        }
        return "INBOUND";
    }
}
