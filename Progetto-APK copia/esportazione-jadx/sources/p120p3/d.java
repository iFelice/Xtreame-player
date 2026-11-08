package p120p3;

import E1.W;
import J3.f;
import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Looper;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.Display;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.internal.ads.B8;
import com.google.android.gms.internal.ads.C1932ra;
import com.google.android.gms.internal.ads.Q7;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p090l3.C3099q;
import p090l3.d1;
import p128q3.a;

/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final W f28202b = new W(Looper.getMainLooper(), 1);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f28203c = AdView.class.getName();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final String f28204d = a.class.getName();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String f28205e = p051g3.a.class.getName();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String f28206f = C1932ra.class.getName();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final String f28207g = p197z3.a.class.getName();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final String f28208h = p043f3.d.class.getName();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public float f28209a;

    public static String a(String str, String str2) {
        for (int i8 = 0; i8 < 2; i8++) {
            try {
                MessageDigest messageDigest = MessageDigest.getInstance(str2);
                messageDigest.update(str.getBytes());
                return String.format(Locale.US, "%032X", new BigInteger(1, messageDigest.digest()));
            } catch (ArithmeticException unused) {
                return null;
            } catch (NoSuchAlgorithmException unused2) {
            }
        }
        return null;
    }

    public static final void e(ViewGroup viewGroup, d1 d1Var, String str, int i8, int i9) {
        if (viewGroup.getChildCount() != 0) {
            return;
        }
        Context context = viewGroup.getContext();
        TextView textView = new TextView(context);
        textView.setGravity(17);
        textView.setText(str);
        textView.setTextColor(i8);
        textView.setBackgroundColor(i9);
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setBackgroundColor(i8);
        int iO = o(context, 3);
        int i10 = d1Var.f26553L;
        int i11 = d1Var.f26550I;
        frameLayout.addView(textView, new FrameLayout.LayoutParams(i10 - iO, i11 - iO, 17));
        viewGroup.addView(frameLayout, i10, i11);
    }

    public static void j(JSONObject jSONObject, JSONObject jSONObject2) throws JSONException {
        Iterator<String> itKeys = jSONObject2.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            Object obj = jSONObject2.get(next);
            try {
                Object obj2 = jSONObject.get(next);
                if (JSONObject.class.isInstance(obj2) && JSONObject.class.isInstance(obj)) {
                    j((JSONObject) obj2, (JSONObject) obj);
                }
            } catch (JSONException unused) {
                jSONObject.put(next, obj);
            }
        }
    }

    public static boolean k(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.startsWith((String) B8.f12290d.l());
    }

    public static final int l(DisplayMetrics displayMetrics, int i8) {
        return (int) TypedValue.applyDimension(1, i8, displayMetrics);
    }

    public static final boolean m() {
        boolean zBooleanValue = ((Boolean) C3099q.f26624d.f26627c.a(Q7.Ja)).booleanValue();
        if (Build.VERSION.SDK_INT < 31) {
            return Build.DEVICE.startsWith("generic");
        }
        String str = Build.FINGERPRINT;
        if (str.contains("generic") || str.contains("emulator")) {
            return true;
        }
        return zBooleanValue && Build.HARDWARE.contains("ranchu");
    }

    public static final void n(Context context, String str, Bundle bundle, c cVar) {
        Context applicationContext = context.getApplicationContext();
        if (applicationContext == null) {
            applicationContext = context;
        }
        bundle.putString("os", Build.VERSION.RELEASE);
        bundle.putString("api", String.valueOf(Build.VERSION.SDK_INT));
        bundle.putString("appid", applicationContext.getPackageName());
        if (str == null) {
            f.f4145b.getClass();
            str = f.a(context) + ".243220000";
        }
        bundle.putString("js", str);
        Uri.Builder builderAppendQueryParameter = new Uri.Builder().scheme("https").path("//pagead2.googlesyndication.com/pagead/gen_204").appendQueryParameter("id", "gmob-apps");
        for (String str2 : bundle.keySet()) {
            builderAppendQueryParameter.appendQueryParameter(str2, bundle.getString(str2));
        }
        cVar.c(builderAppendQueryParameter.toString());
    }

    public static final int o(Context context, int i8) {
        return l(context.getResources().getDisplayMetrics(), i8);
    }

    public static final String p(Context context) {
        ContentResolver contentResolver = context.getContentResolver();
        String string = contentResolver == null ? null : Settings.Secure.getString(contentResolver, "android_id");
        if (string == null || m()) {
            string = "emulator";
        }
        return a(string, "MD5");
    }

    public final JSONArray b(Collection collection) {
        JSONArray jSONArray = new JSONArray();
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            c(jSONArray, it.next());
        }
        return jSONArray;
    }

    public final void c(JSONArray jSONArray, Object obj) {
        if (obj instanceof Bundle) {
            jSONArray.put(h((Bundle) obj));
            return;
        }
        if (obj instanceof Map) {
            jSONArray.put(i((Map) obj));
            return;
        }
        if (obj instanceof Collection) {
            jSONArray.put(b((Collection) obj));
        } else if (obj instanceof Object[]) {
            jSONArray.put(g((Object[]) obj));
        } else {
            jSONArray.put(obj);
        }
    }

    public final void d(JSONObject jSONObject, String str, Object obj) throws JSONException {
        Boolean[] boolArr;
        Long[] lArr;
        Double[] dArr;
        Integer[] numArr;
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15891n)).booleanValue()) {
            str = String.valueOf(str);
        }
        if (obj instanceof Bundle) {
            jSONObject.put(str, h((Bundle) obj));
            return;
        }
        if (obj instanceof Map) {
            jSONObject.put(str, i((Map) obj));
            return;
        }
        if (obj instanceof Collection) {
            jSONObject.put(String.valueOf(str), b((Collection) obj));
            return;
        }
        if (obj instanceof Object[]) {
            jSONObject.put(str, b(Arrays.asList((Object[]) obj)));
            return;
        }
        int i8 = 0;
        if (obj instanceof int[]) {
            int[] iArr = (int[]) obj;
            if (iArr == null) {
                numArr = new Integer[0];
            } else {
                int length = iArr.length;
                Integer[] numArr2 = new Integer[length];
                while (i8 < length) {
                    numArr2[i8] = Integer.valueOf(iArr[i8]);
                    i8++;
                }
                numArr = numArr2;
            }
            jSONObject.put(str, g(numArr));
            return;
        }
        if (obj instanceof double[]) {
            double[] dArr2 = (double[]) obj;
            if (dArr2 == null) {
                dArr = new Double[0];
            } else {
                int length2 = dArr2.length;
                Double[] dArr3 = new Double[length2];
                while (i8 < length2) {
                    dArr3[i8] = Double.valueOf(dArr2[i8]);
                    i8++;
                }
                dArr = dArr3;
            }
            jSONObject.put(str, g(dArr));
            return;
        }
        if (obj instanceof long[]) {
            long[] jArr = (long[]) obj;
            if (jArr == null) {
                lArr = new Long[0];
            } else {
                int length3 = jArr.length;
                Long[] lArr2 = new Long[length3];
                while (i8 < length3) {
                    lArr2[i8] = Long.valueOf(jArr[i8]);
                    i8++;
                }
                lArr = lArr2;
            }
            jSONObject.put(str, g(lArr));
            return;
        }
        if (!(obj instanceof boolean[])) {
            jSONObject.put(str, obj);
            return;
        }
        boolean[] zArr = (boolean[]) obj;
        if (zArr == null) {
            boolArr = new Boolean[0];
        } else {
            int length4 = zArr.length;
            Boolean[] boolArr2 = new Boolean[length4];
            while (i8 < length4) {
                boolArr2[i8] = Boolean.valueOf(zArr[i8]);
                i8++;
            }
            boolArr = boolArr2;
        }
        jSONObject.put(str, g(boolArr));
    }

    public final int f(Context context, int i8) {
        if (this.f28209a < 0.0f) {
            synchronized (this) {
                try {
                    if (this.f28209a < 0.0f) {
                        WindowManager windowManager = (WindowManager) context.getSystemService("window");
                        if (windowManager == null) {
                            return 0;
                        }
                        Display defaultDisplay = windowManager.getDefaultDisplay();
                        DisplayMetrics displayMetrics = new DisplayMetrics();
                        defaultDisplay.getMetrics(displayMetrics);
                        this.f28209a = displayMetrics.density;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return Math.round(i8 / this.f28209a);
    }

    public final JSONArray g(Object[] objArr) {
        JSONArray jSONArray = new JSONArray();
        for (Object obj : objArr) {
            c(jSONArray, obj);
        }
        return jSONArray;
    }

    public final JSONObject h(Bundle bundle) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        for (String str : bundle.keySet()) {
            d(jSONObject, str, bundle.get(str));
        }
        return jSONObject;
    }

    public final JSONObject i(Map map) throws JSONException {
        try {
            JSONObject jSONObject = new JSONObject();
            for (String str : map.keySet()) {
                d(jSONObject, str, map.get(str));
            }
            return jSONObject;
        } catch (ClassCastException e8) {
            throw new JSONException("Could not convert map to JSON: ".concat(String.valueOf(e8.getMessage())));
        }
    }
}
