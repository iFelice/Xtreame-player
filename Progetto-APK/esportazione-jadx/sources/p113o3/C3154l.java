package p113o3;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.internal.ads.C1895qo;
import com.google.android.gms.internal.ads.EnumC1843po;
import com.google.android.gms.internal.ads.J7;
import com.google.android.gms.internal.ads.Q7;
import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import okhttp3.HttpUrl;
import org.json.JSONException;
import org.json.JSONObject;
import p039f.AbstractC2987b;
import p083k3.l;
import p090l3.C3099q;
import p120p3.h;

/* JADX INFO: renamed from: o3.l, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C3154l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f27977a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f27978b = HttpUrl.FRAGMENT_ENCODE_SET;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f27979c = HttpUrl.FRAGMENT_ENCODE_SET;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f27980d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f27981e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f27982f = HttpUrl.FRAGMENT_ENCODE_SET;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public C1895qo f27983g;

    public static void f(String str, Context context, boolean z7, boolean z8) {
        if (context instanceof Activity) {
            O.f27924l.post(new RunnableC3153k(context, str, z7, z8));
        } else {
            h.f("Can not create dialog without Activity Context");
        }
    }

    public static final String k(Context context, String str, String str2) {
        HashMap map = new HashMap();
        map.put("User-Agent", l.f25980A.f25983c.w(context, str2));
        new v(context);
        C3161t c3161tA = v.a(0, str, map, null);
        try {
            return (String) c3161tA.f21082G.get(((Integer) C3099q.f26624d.f26627c.a(Q7.f15935s4)).intValue(), TimeUnit.MILLISECONDS);
        } catch (InterruptedException e8) {
            h.e("Interrupted while retrieving a response from: ".concat(String.valueOf(str)), e8);
            c3161tA.cancel(true);
            return null;
        } catch (TimeoutException e9) {
            h.e("Timeout while retrieving a response from: ".concat(String.valueOf(str)), e9);
            c3161tA.cancel(true);
            return null;
        } catch (Exception e10) {
            h.e("Error retrieving a response from: ".concat(String.valueOf(str)), e10);
            return null;
        }
    }

    public final String a() {
        String str;
        synchronized (this.f27977a) {
            str = this.f27979c;
        }
        return str;
    }

    public final void b(Context context) {
        C1895qo c1895qo;
        if (!((Boolean) C3099q.f26624d.f26627c.a(Q7.w8)).booleanValue() || (c1895qo = this.f27983g) == null) {
            return;
        }
        c1895qo.d(new BinderC3152j(this, context), EnumC1843po.f20489J);
    }

    public final void c(Context context, String str, String str2) {
        O o4 = l.f25980A.f25983c;
        O.q(context, l(context, (String) C3099q.f26624d.f26627c.a(Q7.o4), str, str2));
    }

    public final void d(Context context, String str, String str2, String str3) {
        Uri.Builder builderBuildUpon = l(context, (String) C3099q.f26624d.f26627c.a(Q7.f15927r4), str3, str).buildUpon();
        builderBuildUpon.appendQueryParameter("debugData", str2);
        O o4 = l.f25980A.f25983c;
        O.j(context, str, builderBuildUpon.build().toString());
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0036  */
    /* JADX WARN: Code duplicated, block: B:16:0x0037 A[Catch: all -> 0x0045, TryCatch #0 {all -> 0x0045, blocks: (B:4:0x0003, B:6:0x0017, B:8:0x0026, B:11:0x002c, B:13:0x0032, B:16:0x0037, B:17:0x003b, B:19:0x0041, B:22:0x0047), top: B:26:0x0003 }] */
    public final void e(boolean z7) {
        synchronized (this.f27977a) {
            try {
                this.f27981e = z7;
                if (((Boolean) C3099q.f26624d.f26627c.a(Q7.w8)).booleanValue()) {
                    l.f25980A.f25987g.d().b(z7);
                    C1895qo c1895qo = this.f27983g;
                    if (c1895qo != null) {
                        if (c1895qo.f20637u) {
                            if (z7) {
                                if (c1895qo.f20635s) {
                                    c1895qo.n();
                                }
                            }
                        } else if (z7) {
                            c1895qo.i();
                            if (c1895qo.f20635s) {
                                c1895qo.n();
                            }
                        }
                        if (!c1895qo.f()) {
                            c1895qo.m();
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean g(Context context, String str, String str2) {
        J7 j8 = Q7.f15919q4;
        C3099q c3099q = C3099q.f26624d;
        String strK = k(context, l(context, (String) c3099q.f26627c.a(j8), str, str2).toString(), str2);
        if (TextUtils.isEmpty(strK)) {
            h.b("Not linked for debug signals.");
            return false;
        }
        try {
            boolean zEquals = "1".equals(new JSONObject(strK.trim()).optString("debug_mode"));
            e(zEquals);
            if (((Boolean) c3099q.f26627c.a(Q7.w8)).booleanValue()) {
                L lD = l.f25980A.f25987g.d();
                if (true != zEquals) {
                    str = HttpUrl.FRAGMENT_ENCODE_SET;
                }
                lD.a(str);
            }
            return zEquals;
        } catch (JSONException e8) {
            h.h("Fail to get debug mode response json.", e8);
            return false;
        }
    }

    public final boolean h() {
        boolean z7;
        synchronized (this.f27977a) {
            z7 = this.f27981e;
        }
        return z7;
    }

    public final boolean i() {
        boolean z7;
        synchronized (this.f27977a) {
            z7 = this.f27980d;
        }
        return z7;
    }

    public final boolean j(Context context, String str, String str2, String str3) {
        if (TextUtils.isEmpty(str2) || !i()) {
            return false;
        }
        h.b("Sending troubleshooting signals to the server.");
        d(context, str, str2, str3);
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:20:0x006b A[Catch: all -> 0x0032, TryCatch #0 {, blocks: (B:4:0x000b, B:6:0x0013, B:7:0x0019, B:12:0x003b, B:14:0x0043, B:16:0x0054, B:19:0x0066, B:11:0x0034, B:20:0x006b, B:21:0x006d), top: B:26:0x000b, inners: #1, #2 }] */
    public final Uri l(Context context, String str, String str2, String str3) {
        String str4;
        String str5;
        Uri.Builder builderBuildUpon = Uri.parse(str).buildUpon();
        synchronized (this.f27977a) {
            if (TextUtils.isEmpty(this.f27978b)) {
                O o4 = l.f25980A.f25983c;
                try {
                    FileInputStream fileInputStreamOpenFileInput = context.openFileInput("debug_signals_id.txt");
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    AbstractC2987b.f(fileInputStreamOpenFileInput, byteArrayOutputStream, true);
                    str5 = new String(byteArrayOutputStream.toByteArray(), "UTF-8");
                } catch (IOException unused) {
                    h.b("Error reading from internal storage.");
                    str5 = HttpUrl.FRAGMENT_ENCODE_SET;
                }
                this.f27978b = str5;
                if (TextUtils.isEmpty(str5)) {
                    O o7 = l.f25980A.f25983c;
                    String string = UUID.randomUUID().toString();
                    this.f27978b = string;
                    try {
                        FileOutputStream fileOutputStreamOpenFileOutput = context.openFileOutput("debug_signals_id.txt", 0);
                        fileOutputStreamOpenFileOutput.write(string.getBytes("UTF-8"));
                        fileOutputStreamOpenFileOutput.close();
                    } catch (Exception e8) {
                        h.e("Error writing to file in internal storage.", e8);
                    }
                    str4 = this.f27978b;
                } else {
                    str4 = this.f27978b;
                }
            } else {
                str4 = this.f27978b;
            }
            throw th;
        }
        builderBuildUpon.appendQueryParameter("linkedDeviceId", str4);
        builderBuildUpon.appendQueryParameter("adSlotPath", str2);
        builderBuildUpon.appendQueryParameter("afmaVersion", str3);
        return builderBuildUpon.build();
    }
}
