package S3;

import C6.p;
import J6.AbstractC0214m;
import J6.AbstractC0224x;
import Y.AbstractComponentCallbacksC0406s;
import Y.r;
import android.app.Activity;
import android.app.AppOpsManager;
import android.app.KeyguardManager;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.Point;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Build;
import android.os.Looper;
import android.os.SystemClock;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.WindowManager;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.ScrollView;
import android.widget.TextView;
import com.google.android.gms.internal.ads.AbstractC2331z8;
import com.google.android.gms.internal.ads.C1448i6;
import com.google.android.gms.internal.ads.C1534jr;
import com.google.android.gms.internal.ads.C2061tz;
import com.google.android.gms.internal.ads.Ez;
import com.google.android.gms.internal.ads.IA;
import com.google.android.gms.internal.ads.J7;
import com.google.android.gms.internal.ads.NA;
import com.google.android.gms.internal.ads.O7;
import com.google.android.gms.internal.ads.Ov;
import com.google.android.gms.internal.ads.Q7;
import com.google.android.gms.internal.ads.U7;
import com.google.android.gms.internal.ads.W7;
import com.google.android.gms.internal.ads.Xu;
import com.google.android.gms.internal.measurement.U1;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Map;
import okhttp3.HttpUrl;
import org.eclipse.paho.client.mqttv3.MqttTopic;
import org.json.JSONException;
import org.json.JSONObject;
import p083k3.l;
import p090l3.C3097p;
import p090l3.C3099q;
import p113o3.I;
import p113o3.O;
import p185x6.k;
import pe.hf.black20.encryption.Encrypt;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public abstract class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static ClassLoader f6430a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Thread f6431b;

    public static IA A(NA na) {
        return new IA(na);
    }

    public static JSONObject B(String str, Context context, Point point, Point point2) {
        JSONObject jSONObject = null;
        try {
            JSONObject jSONObject2 = new JSONObject();
            try {
                JSONObject jSONObject3 = new JSONObject();
                try {
                    int i8 = point2.x;
                    C3097p c3097p = C3097p.f26618f;
                    jSONObject3.put("x", c3097p.f26619a.f(context, i8));
                    jSONObject3.put("y", c3097p.f26619a.f(context, point2.y));
                    jSONObject3.put("start_x", c3097p.f26619a.f(context, point.x));
                    jSONObject3.put("start_y", c3097p.f26619a.f(context, point.y));
                    jSONObject = jSONObject3;
                } catch (JSONException e8) {
                    p120p3.h.e("Error occurred while putting signals into JSON object.", e8);
                }
                jSONObject2.put("click_point", jSONObject);
                jSONObject2.put("asset_id", str);
                return jSONObject2;
            } catch (Exception e9) {
                e = e9;
                jSONObject = jSONObject2;
                p120p3.h.e("Error occurred while grabbing click signals.", e);
                return jSONObject;
            }
        } catch (Exception e10) {
            e = e10;
        }
    }

    /* JADX WARN: Code duplicated, block: B:59:0x01cc  */
    public static JSONObject C(Context context, Map map, Map map2, View view, ImageView.ScaleType scaleType) {
        Map map3;
        int[] iArr;
        JSONObject jSONObject;
        boolean z7;
        Map map4 = map2;
        JSONObject jSONObject2 = new JSONObject();
        if (map != null && view != null) {
            int i8 = 2;
            int[] iArr2 = new int[2];
            view.getLocationOnScreen(iArr2);
            Iterator it = map.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                View view2 = (View) ((WeakReference) entry.getValue()).get();
                if (view2 != null) {
                    int[] iArr3 = new int[i8];
                    view2.getLocationOnScreen(iArr3);
                    JSONObject jSONObject3 = new JSONObject();
                    JSONObject jSONObject4 = new JSONObject();
                    Iterator it2 = it;
                    try {
                        int measuredWidth = view2.getMeasuredWidth();
                        JSONObject jSONObject5 = jSONObject2;
                        try {
                            C3097p c3097p = C3097p.f26618f;
                            try {
                                p120p3.d dVar = c3097p.f26619a;
                                p120p3.d dVar2 = c3097p.f26619a;
                                jSONObject4.put("width", dVar.f(context, measuredWidth));
                                jSONObject4.put("height", dVar2.f(context, view2.getMeasuredHeight()));
                                jSONObject4.put("x", dVar2.f(context, iArr3[0] - iArr2[0]));
                                jSONObject4.put("y", dVar2.f(context, iArr3[1] - iArr2[1]));
                                jSONObject4.put("relative_to", "ad_view");
                                jSONObject3.put("frame", jSONObject4);
                                Rect rect = new Rect();
                                if (view2.getLocalVisibleRect(rect)) {
                                    jSONObject = I(context, rect);
                                } else {
                                    jSONObject = new JSONObject();
                                    jSONObject.put("width", 0);
                                    jSONObject.put("height", 0);
                                    jSONObject.put("x", dVar2.f(context, iArr3[0] - iArr2[0]));
                                    jSONObject.put("y", dVar2.f(context, iArr3[1] - iArr2[1]));
                                    jSONObject.put("relative_to", "ad_view");
                                }
                                jSONObject3.put("visible_bounds", jSONObject);
                                if (((String) entry.getKey()).equals("3010")) {
                                    J7 j8 = Q7.f15882l7;
                                    C3099q c3099q = C3099q.f26624d;
                                    O7 o7 = c3099q.f26627c;
                                    O7 o8 = c3099q.f26627c;
                                    if (((Boolean) o7.a(j8)).booleanValue()) {
                                        jSONObject3.put("mediaview_graphics_matrix", view2.getMatrix().toShortString());
                                    }
                                    if (((Boolean) o8.a(Q7.m7)).booleanValue()) {
                                        ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
                                        jSONObject3.put("view_width_layout_type", J(layoutParams.width) - 1);
                                        jSONObject3.put("view_height_layout_type", J(layoutParams.height) - 1);
                                    }
                                    if (((Boolean) o8.a(Q7.n7)).booleanValue()) {
                                        ArrayList arrayList = new ArrayList();
                                        arrayList.add(Integer.valueOf(view2.getId()));
                                        for (ViewParent parent = view2.getParent(); parent instanceof View; parent = parent.getParent()) {
                                            arrayList.add(Integer.valueOf(((View) parent).getId()));
                                        }
                                        jSONObject3.put("view_path", TextUtils.join(MqttTopic.TOPIC_LEVEL_SEPARATOR, arrayList));
                                    }
                                    if (scaleType != null) {
                                        jSONObject3.put("mediaview_scale_type", scaleType.ordinal());
                                    }
                                }
                                if (view2 instanceof TextView) {
                                    try {
                                        TextView textView = (TextView) view2;
                                        jSONObject3.put("text_color", textView.getCurrentTextColor());
                                        iArr = iArr2;
                                        try {
                                            jSONObject3.put("font_size", textView.getTextSize());
                                            jSONObject3.put("text", textView.getText());
                                        } catch (JSONException unused) {
                                            map3 = map2;
                                            jSONObject2 = jSONObject5;
                                            p120p3.h.g("Unable to get asset views information");
                                            map4 = map3;
                                            iArr2 = iArr;
                                            i8 = 2;
                                            it = it2;
                                        }
                                    } catch (JSONException unused2) {
                                        iArr = iArr2;
                                    }
                                } else {
                                    iArr = iArr2;
                                }
                                map3 = map2;
                                if (map3 != null) {
                                    try {
                                        if (map3.containsKey(entry.getKey()) && view2.isClickable()) {
                                            z7 = true;
                                        } else {
                                            z7 = false;
                                        }
                                    } catch (JSONException unused3) {
                                        jSONObject2 = jSONObject5;
                                        p120p3.h.g("Unable to get asset views information");
                                        map4 = map3;
                                        iArr2 = iArr;
                                        i8 = 2;
                                        it = it2;
                                    }
                                } else {
                                    z7 = false;
                                }
                                jSONObject3.put("is_clickable", z7);
                                jSONObject2 = jSONObject5;
                                try {
                                    jSONObject2.put((String) entry.getKey(), jSONObject3);
                                } catch (JSONException unused4) {
                                    p120p3.h.g("Unable to get asset views information");
                                }
                            } catch (JSONException unused5) {
                                map3 = map2;
                                iArr = iArr2;
                                jSONObject2 = jSONObject5;
                                p120p3.h.g("Unable to get asset views information");
                                map4 = map3;
                                iArr2 = iArr;
                                i8 = 2;
                                it = it2;
                            }
                        } catch (JSONException unused6) {
                            map3 = map4;
                        }
                    } catch (JSONException unused7) {
                        map3 = map4;
                        iArr = iArr2;
                    }
                    map4 = map3;
                    iArr2 = iArr;
                    i8 = 2;
                    it = it2;
                }
            }
        }
        return jSONObject2;
    }

    public static JSONObject D(Context context, View view) {
        JSONObject jSONObject = new JSONObject();
        if (view != null) {
            try {
                O o4 = l.f25980A.f25983c;
                jSONObject.put("can_show_on_lock_screen", O.C(view));
                boolean z7 = false;
                if (context != null) {
                    Object systemService = context.getSystemService("keyguard");
                    KeyguardManager keyguardManager = (systemService == null || !(systemService instanceof KeyguardManager)) ? null : (KeyguardManager) systemService;
                    if (keyguardManager != null && keyguardManager.isKeyguardLocked()) {
                        z7 = true;
                    }
                }
                jSONObject.put("is_keyguard_locked", z7);
            } catch (JSONException unused) {
                p120p3.h.g("Unable to get lock screen information");
            }
        }
        return jSONObject;
    }

    public static JSONObject E(View view) {
        JSONObject jSONObject = new JSONObject();
        if (view != null) {
            try {
                boolean z7 = true;
                if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15874k7)).booleanValue()) {
                    O o4 = l.f25980A.f25983c;
                    ViewParent parent = view.getParent();
                    while (parent != null && !(parent instanceof ScrollView)) {
                        parent = parent.getParent();
                    }
                    jSONObject.put("contained_in_scroll_view", parent != null);
                } else {
                    O o7 = l.f25980A.f25983c;
                    ViewParent parent2 = view.getParent();
                    while (parent2 != null && !(parent2 instanceof AdapterView)) {
                        parent2 = parent2.getParent();
                    }
                    if (parent2 == null || ((AdapterView) parent2).getPositionForView(view) == -1) {
                        z7 = false;
                    }
                    jSONObject.put("contained_in_scroll_view", z7);
                }
            } catch (Exception unused) {
            }
        }
        return jSONObject;
    }

    /* JADX WARN: Code duplicated, block: B:43:0x0135  */
    public static JSONObject F(Context context, View view) {
        String str;
        byte b8;
        JSONObject jSONObjectI;
        JSONObject jSONObject = new JSONObject();
        if (view != null) {
            try {
                int[] iArr = new int[2];
                view.getLocationOnScreen(iArr);
                int[] iArr2 = {view.getMeasuredWidth(), view.getMeasuredHeight()};
                for (ViewParent parent = view.getParent(); parent instanceof ViewGroup; parent = parent.getParent()) {
                    ViewGroup viewGroup = (ViewGroup) parent;
                    iArr2[0] = Math.min(viewGroup.getMeasuredWidth(), iArr2[0]);
                    iArr2[1] = Math.min(viewGroup.getMeasuredHeight(), iArr2[1]);
                }
                JSONObject jSONObject2 = new JSONObject();
                int measuredWidth = view.getMeasuredWidth();
                C3097p c3097p = C3097p.f26618f;
                p120p3.d dVar = c3097p.f26619a;
                p120p3.d dVar2 = c3097p.f26619a;
                jSONObject2.put("width", dVar.f(context, measuredWidth));
                jSONObject2.put("height", dVar2.f(context, view.getMeasuredHeight()));
                jSONObject2.put("x", dVar2.f(context, iArr[0]));
                jSONObject2.put("y", dVar2.f(context, iArr[1]));
                jSONObject2.put("maximum_visible_width", dVar2.f(context, iArr2[0]));
                jSONObject2.put("maximum_visible_height", dVar2.f(context, iArr2[1]));
                jSONObject2.put("relative_to", "window");
                jSONObject.put("frame", jSONObject2);
                Rect rect = new Rect();
                if (view.getGlobalVisibleRect(rect)) {
                    jSONObjectI = I(context, rect);
                } else {
                    JSONObject jSONObject3 = new JSONObject();
                    jSONObject3.put("width", 0);
                    jSONObject3.put("height", 0);
                    jSONObject3.put("x", dVar2.f(context, iArr[0]));
                    jSONObject3.put("y", dVar2.f(context, iArr[1]));
                    jSONObject3.put("relative_to", "window");
                    jSONObjectI = jSONObject3;
                }
                jSONObject.put("visible_bounds", jSONObjectI);
            } catch (Exception unused) {
                p120p3.h.g("Unable to get native ad view bounding box");
            }
            ViewParent parent2 = view.getParent();
            if (parent2 != null) {
                try {
                    str = (String) parent2.getClass().getMethod("getTemplateTypeName", new Class[0]).invoke(parent2, new Object[0]);
                } catch (IllegalAccessException e8) {
                    e = e8;
                    p120p3.h.e("Cannot access method getTemplateTypeName: ", e);
                    str = HttpUrl.FRAGMENT_ENCODE_SET;
                } catch (NoSuchMethodException unused2) {
                    str = HttpUrl.FRAGMENT_ENCODE_SET;
                } catch (SecurityException e9) {
                    e = e9;
                    p120p3.h.e("Cannot access method getTemplateTypeName: ", e);
                    str = HttpUrl.FRAGMENT_ENCODE_SET;
                } catch (InvocationTargetException e10) {
                    e = e10;
                    p120p3.h.e("Cannot access method getTemplateTypeName: ", e);
                    str = HttpUrl.FRAGMENT_ENCODE_SET;
                }
            } else {
                str = HttpUrl.FRAGMENT_ENCODE_SET;
            }
            try {
                int iHashCode = str.hashCode();
                if (iHashCode != -2066603854) {
                    if (iHashCode == 2019754500 && str.equals("medium_template")) {
                        b8 = 1;
                    } else {
                        b8 = -1;
                    }
                } else if (str.equals("small_template")) {
                    b8 = 0;
                } else {
                    b8 = -1;
                }
                if (b8 == 0) {
                    jSONObject.put("native_template_type", 1);
                } else if (b8 != 1) {
                    jSONObject.put("native_template_type", 0);
                } else {
                    jSONObject.put("native_template_type", 2);
                }
            } catch (JSONException e11) {
                p120p3.h.e("Could not log native template signal to JSON", e11);
            }
            if (((Boolean) C3099q.f26624d.f26627c.a(Q7.m7)).booleanValue()) {
                try {
                    ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
                    jSONObject.put("view_width_layout_type", J(layoutParams.width) - 1);
                    jSONObject.put("view_height_layout_type", J(layoutParams.height) - 1);
                } catch (Exception unused3) {
                    I.k("Unable to get native ad view layout types");
                }
            }
        }
        return jSONObject;
    }

    public static boolean G(Context context, Ov ov) {
        Ez ez;
        if (!ov.f15233N) {
            return false;
        }
        J7 j8 = Q7.o7;
        C3099q c3099q = C3099q.f26624d;
        boolean zBooleanValue = ((Boolean) c3099q.f26627c.a(j8)).booleanValue();
        O7 o7 = c3099q.f26627c;
        if (zBooleanValue) {
            return ((Boolean) o7.a(Q7.r7)).booleanValue();
        }
        String str = (String) o7.a(Q7.p7);
        if (!str.isEmpty() && context != null) {
            String packageName = context.getPackageName();
            Iterator itT = Xu.j(new C2061tz(';')).t(str);
            do {
                ez = (Ez) itT;
                if (ez.hasNext()) {
                }
            } while (!((String) ez.next()).equals(packageName));
            return true;
        }
        return false;
    }

    public static boolean H(int i8) {
        J7 j8 = Q7.f15861j3;
        C3099q c3099q = C3099q.f26624d;
        if (((Boolean) c3099q.f26627c.a(j8)).booleanValue()) {
            return ((Boolean) c3099q.f26627c.a(Q7.f15870k3)).booleanValue() || i8 <= 15299999;
        }
        return true;
    }

    public static JSONObject I(Context context, Rect rect) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        int i8 = rect.right - rect.left;
        C3097p c3097p = C3097p.f26618f;
        jSONObject.put("width", c3097p.f26619a.f(context, i8));
        int i9 = rect.bottom - rect.top;
        p120p3.d dVar = c3097p.f26619a;
        jSONObject.put("height", dVar.f(context, i9));
        jSONObject.put("x", dVar.f(context, rect.left));
        jSONObject.put("y", dVar.f(context, rect.top));
        jSONObject.put("relative_to", "self");
        return jSONObject;
    }

    public static int J(int i8) {
        if (i8 != -2) {
            return i8 != -1 ? 2 : 3;
        }
        return 4;
    }

    public static final LinkedHashSet a(byte[] bArr) throws IOException {
        q0.h(bArr, "bytes");
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        if (bArr.length == 0) {
            return linkedHashSet;
        }
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        try {
            try {
                ObjectInputStream objectInputStream = new ObjectInputStream(byteArrayInputStream);
                try {
                    int i8 = objectInputStream.readInt();
                    for (int i9 = 0; i9 < i8; i9++) {
                        Uri uri = Uri.parse(objectInputStream.readUTF());
                        boolean z7 = objectInputStream.readBoolean();
                        q0.g(uri, "uri");
                        linkedHashSet.add(new p027d2.c(uri, z7));
                    }
                    q0.k(objectInputStream, null);
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        q0.k(objectInputStream, th);
                        throw th2;
                    }
                }
            } catch (IOException e8) {
                e8.printStackTrace();
            }
            q0.k(byteArrayInputStream, null);
            return linkedHashSet;
        } catch (Throwable th3) {
            try {
                throw th3;
            } catch (Throwable th4) {
                q0.k(byteArrayInputStream, th3);
                throw th4;
            }
        }
    }

    public static final void b(int i8, int i9) {
        if (i8 <= i9) {
            return;
        }
        throw new IndexOutOfBoundsException("toIndex (" + i8 + ") is greater than size (" + i9 + ").");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static p185x6.e c(Object obj, p185x6.e eVar, p pVar) {
        q0.h(eVar, "completion");
        if (pVar instanceof p199z6.a) {
            return ((p199z6.a) pVar).d(obj, eVar);
        }
        p185x6.j context = eVar.getContext();
        return context == k.f31227G ? new p192y6.b(obj, eVar, pVar) : new p192y6.c(eVar, context, pVar, obj);
    }

    public static final int d(int i8) {
        if (i8 == 0) {
            return 1;
        }
        if (i8 == 1) {
            return 2;
        }
        throw new IllegalArgumentException(A0.O.y("Could not convert ", i8, " to BackoffPolicy"));
    }

    public static final int e(int i8) {
        if (i8 == 0) {
            return 1;
        }
        if (i8 == 1) {
            return 2;
        }
        if (i8 == 2) {
            return 3;
        }
        if (i8 == 3) {
            return 4;
        }
        if (i8 == 4) {
            return 5;
        }
        if (Build.VERSION.SDK_INT < 30 || i8 != 5) {
            throw new IllegalArgumentException(A0.O.y("Could not convert ", i8, " to NetworkType"));
        }
        return 6;
    }

    public static final int f(int i8) {
        if (i8 == 0) {
            return 1;
        }
        if (i8 == 1) {
            return 2;
        }
        throw new IllegalArgumentException(A0.O.y("Could not convert ", i8, " to OutOfQuotaPolicy"));
    }

    public static final int g(int i8) {
        if (i8 == 0) {
            return 1;
        }
        if (i8 == 1) {
            return 2;
        }
        if (i8 == 2) {
            return 3;
        }
        if (i8 == 3) {
            return 4;
        }
        if (i8 == 4) {
            return 5;
        }
        if (i8 == 5) {
            return 6;
        }
        throw new IllegalArgumentException(A0.O.y("Could not convert ", i8, " to State"));
    }

    public static p185x6.e h(p185x6.e eVar) {
        q0.h(eVar, "<this>");
        p199z6.c cVar = eVar instanceof p199z6.c ? (p199z6.c) eVar : null;
        if (cVar == null) {
            return eVar;
        }
        p185x6.e eVar2 = cVar.f31929I;
        if (eVar2 != null) {
            return eVar2;
        }
        p185x6.j jVar = cVar.f31928H;
        q0.e(jVar);
        p185x6.g gVar = (p185x6.g) jVar.k(p185x6.f.f31226G);
        p185x6.e dVar = gVar != null ? new N6.d((AbstractC0214m) gVar, cVar) : cVar;
        cVar.f31929I = dVar;
        return dVar;
    }

    public static boolean i(Context context, int i8) {
        if (r(i8, context, "com.google.android.gms")) {
            try {
                PackageInfo packageInfo = context.getPackageManager().getPackageInfo("com.google.android.gms", 64);
                J3.k kVarB = J3.k.b(context);
                kVarB.getClass();
                if (packageInfo == null) {
                    return false;
                }
                if (!J3.k.g(packageInfo, false)) {
                    if (!J3.k.g(packageInfo, true)) {
                        return false;
                    }
                    if (!J3.j.b((Context) kVarB.f4152G)) {
                        Log.w("GoogleSignatureVerifier", "Test-keys aren't accepted on this build.");
                        return false;
                    }
                }
                return true;
            } catch (PackageManager.NameNotFoundException unused) {
                if (Log.isLoggable("UidVerifier", 3)) {
                    Log.d("UidVerifier", "Package manager can't find google play services package, defaulting to false");
                }
            }
        }
        return false;
    }

    public static void j(View view, int i8, int i9, int i10, int i11) {
        p190y4.k.U("\tdesired (w,h)", view.getMeasuredWidth(), view.getMeasuredHeight());
        if (view.getVisibility() == 8) {
            i8 = 0;
            i9 = 0;
        }
        view.measure(View.MeasureSpec.makeMeasureSpec(i8, i10), View.MeasureSpec.makeMeasureSpec(i9, i11));
        p190y4.k.U("\tactual (w,h)", view.getMeasuredWidth(), view.getMeasuredHeight());
    }

    public static void k(View view, int i8, int i9) {
        j(view, i8, i9, Integer.MIN_VALUE, Integer.MIN_VALUE);
    }

    public static void l(Activity activity, Activity activity2, g7.c cVar) {
        h7.i iVarX = A0.O.x("ORT_PROFILE", "Default (XC)", new c7.a(activity, 0));
        SharedPreferences sharedPreferences = activity.getSharedPreferences("pe.hf.black20", 0);
        String strA = Encrypt.a(iVarX.f25480c);
        String strA2 = Encrypt.a(iVarX.f25481d);
        String str = Encrypt.a(iVarX.f25482e) + "/panel_pro/api/client/refresh_token";
        Log.d("XCIPTV_TAG", str);
        HashMap map = new HashMap();
        map.put("refresh_token", Encrypt.a(sharedPreferences.getString("otr_refresh_token", null)));
        try {
            new C1448i6(1, activity2, cVar, "renewToken", str, new JSONObject(map), strA, strA2);
        } catch (Exception unused) {
            Log.d("XCIPTV_TAG", "OTRUpdateContents - OTR info - VolleyGETStringRequest Error");
        }
    }

    public static void m(Context context, AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s, g7.c cVar) {
        h7.i iVarX = A0.O.x("ORT_PROFILE", "Default (XC)", new c7.a(context, 0));
        SharedPreferences sharedPreferences = context.getSharedPreferences("pe.hf.black20", 0);
        String strA = Encrypt.a(iVarX.f25480c);
        String strA2 = Encrypt.a(iVarX.f25481d);
        String str = Encrypt.a(iVarX.f25482e) + "/panel_pro/api/client/refresh_token";
        Log.d("XCIPTV_TAG", str);
        HashMap map = new HashMap();
        map.put("refresh_token", Encrypt.a(sharedPreferences.getString("otr_refresh_token", null)));
        try {
            new C1448i6(1, abstractComponentCallbacksC0406s, cVar, "renewToken", str, new JSONObject(map), strA, strA2);
        } catch (Exception unused) {
            Log.d("XCIPTV_TAG", "OTRUpdateContents - OTR info - VolleyGETStringRequest Error");
        }
    }

    public static final void n(AbstractC0224x abstractC0224x, p185x6.e eVar, boolean z7) {
        Object objH = abstractC0224x.h();
        Throwable thE = abstractC0224x.e(objH);
        Object objN = thE != null ? q0.n(thE) : abstractC0224x.f(objH);
        if (!z7) {
            eVar.b(objN);
            return;
        }
        q0.f(eVar, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<T of kotlinx.coroutines.DispatchedTaskKt.resume>");
        N6.d dVar = (N6.d) eVar;
        p185x6.e eVar2 = dVar.f4964K;
        p185x6.j context = eVar2.getContext();
        Object objD = N6.e.d(context, dVar.f4966M);
        if (objD != N6.e.f4969c) {
            a7.b.i(eVar2, context);
        }
        try {
            eVar2.b(objN);
        } finally {
            N6.e.a(context, objD);
        }
    }

    public static final int o(int i8) {
        p148t.a.f(i8, "state");
        int iB = p156u.h.b(i8);
        if (iB == 0) {
            return 0;
        }
        if (iB == 1) {
            return 1;
        }
        if (iB == 2) {
            return 2;
        }
        if (iB == 3) {
            return 3;
        }
        if (iB == 4) {
            return 4;
        }
        if (iB == 5) {
            return 5;
        }
        throw new r(16, (Object) null);
    }

    public static F6.a p(F6.c cVar, int i8) {
        q0.h(cVar, "<this>");
        boolean z7 = i8 > 0;
        Integer numValueOf = Integer.valueOf(i8);
        if (z7) {
            if (cVar.f3267I <= 0) {
                i8 = -i8;
            }
            return new F6.a(cVar.f3265G, cVar.f3266H, i8);
        }
        throw new IllegalArgumentException("Step must be positive, was: " + numValueOf + '.');
    }

    public static void q(Throwable th) {
        if (th instanceof VirtualMachineError) {
            throw ((VirtualMachineError) th);
        }
        if (th instanceof ThreadDeath) {
            throw ((ThreadDeath) th);
        }
        if (th instanceof LinkageError) {
            throw ((LinkageError) th);
        }
    }

    public static boolean r(int i8, Context context, String str) {
        U1 u1A = Q3.c.a(context);
        u1A.getClass();
        try {
            AppOpsManager appOpsManager = (AppOpsManager) u1A.f23010G.getSystemService("appops");
            if (appOpsManager == null) {
                throw new NullPointerException("context.getSystemService(Context.APP_OPS_SERVICE) is null");
            }
            appOpsManager.checkPackage(i8, str);
            return true;
        } catch (SecurityException unused) {
            return false;
        }
    }

    public static F6.c s(int i8, int i9) {
        if (i9 > Integer.MIN_VALUE) {
            return new F6.c(i8, i9 - 1, 1);
        }
        F6.c cVar = F6.c.f3272J;
        return F6.c.f3272J;
    }

    /* JADX WARN: Code duplicated, block: B:52:0x00a8 A[Catch: all -> 0x00a4, PHI: r1
      0x00a8: PHI (r1v4 java.lang.Thread) = (r1v3 java.lang.Thread), (r1v15 java.lang.Thread) binds: [B:7:0x000a, B:46:0x00a1] A[DONT_GENERATE, DONT_INLINE], TRY_LEAVE, TryCatch #3 {, blocks: (B:4:0x0003, B:6:0x0007, B:8:0x000c, B:45:0x009f, B:60:0x00ce, B:12:0x001f, B:51:0x00a7, B:52:0x00a8, B:63:0x00d2, B:64:0x00d3, B:53:0x00a9, B:59:0x00cd, B:58:0x00b3, B:13:0x0020, B:15:0x002d, B:25:0x0047, B:26:0x004e, B:28:0x0059, B:34:0x006e, B:35:0x0073, B:42:0x0083, B:43:0x009d, B:18:0x003c), top: B:74:0x0003, inners: #0, #6 }] */
    /* JADX WARN: Code duplicated, block: B:69:0x00a9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public static synchronized ClassLoader t() {
        SecurityException e8;
        Thread thread;
        ThreadGroup threadGroup;
        if (f6430a == null) {
            Thread thread2 = f6431b;
            ClassLoader contextClassLoader = null;
            if (thread2 != null) {
                synchronized (thread2) {
                    try {
                        contextClassLoader = f6431b.getContextClassLoader();
                    } catch (SecurityException e9) {
                        Log.w("DynamiteLoaderV2CL", "Failed to get thread context classloader " + e9.getMessage());
                    }
                }
                f6430a = contextClassLoader;
            } else {
                ThreadGroup threadGroup2 = Looper.getMainLooper().getThread().getThreadGroup();
                if (threadGroup2 == null) {
                    thread2 = null;
                } else {
                    synchronized (Void.class) {
                        try {
                            try {
                                int iActiveGroupCount = threadGroup2.activeGroupCount();
                                ThreadGroup[] threadGroupArr = new ThreadGroup[iActiveGroupCount];
                                threadGroup2.enumerate(threadGroupArr);
                                int i8 = 0;
                                int i9 = 0;
                                while (true) {
                                    if (i9 >= iActiveGroupCount) {
                                        threadGroup = null;
                                        break;
                                    }
                                    threadGroup = threadGroupArr[i9];
                                    if ("dynamiteLoader".equals(threadGroup.getName())) {
                                        break;
                                    }
                                    i9++;
                                }
                                if (threadGroup == null) {
                                    threadGroup = new ThreadGroup(threadGroup2, "dynamiteLoader");
                                }
                                int iActiveCount = threadGroup.activeCount();
                                Thread[] threadArr = new Thread[iActiveCount];
                                threadGroup.enumerate(threadArr);
                                while (true) {
                                    if (i8 >= iActiveCount) {
                                        thread = null;
                                        break;
                                    }
                                    thread = threadArr[i8];
                                    if ("GmsDynamite".equals(thread.getName())) {
                                        break;
                                    }
                                    i8++;
                                }
                                if (thread == null) {
                                    try {
                                        d dVar = new d(threadGroup);
                                        try {
                                            dVar.setContextClassLoader(null);
                                            dVar.start();
                                            thread = dVar;
                                        } catch (SecurityException e10) {
                                            e8 = e10;
                                            thread = dVar;
                                            Log.w("DynamiteLoaderV2CL", "Failed to enumerate thread/threadgroup " + e8.getMessage());
                                        }
                                    } catch (SecurityException e11) {
                                        e8 = e11;
                                    }
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        } catch (SecurityException e12) {
                            e8 = e12;
                            thread = null;
                        }
                    }
                    thread2 = thread;
                }
                f6431b = thread2;
                if (thread2 != null) {
                    synchronized (thread2) {
                        contextClassLoader = f6431b.getContextClassLoader();
                    }
                }
                f6430a = contextClassLoader;
            }
        }
        return f6430a;
    }

    public static void v(W7 w7, U7 u7, String... strArr) {
        if (u7 == null) {
            return;
        }
        l.f25980A.f25990j.getClass();
        w7.c(u7, SystemClock.elapsedRealtime(), strArr);
    }

    public static void w(String str) {
        if (((Boolean) AbstractC2331z8.f22133a.l()).booleanValue()) {
            p120p3.h.b(str);
        }
    }

    public static long x(C1534jr c1534jr, int i8, int i9) {
        c1534jr.j(i8);
        if (c1534jr.o() < 5) {
            return -9223372036854775807L;
        }
        int iR = c1534jr.r();
        if ((8388608 & iR) != 0 || ((iR >> 8) & 8191) != i9 || (iR & 32) == 0 || c1534jr.w() < 7 || c1534jr.o() < 7 || (c1534jr.w() & 16) != 16) {
            return -9223372036854775807L;
        }
        byte[] bArr = new byte[6];
        c1534jr.f(0, bArr, 6);
        long j8 = bArr[0];
        long j9 = bArr[1];
        long j10 = bArr[2];
        long j11 = bArr[3] & 255;
        return ((j8 & 255) << 25) | ((j9 & 255) << 17) | ((j10 & 255) << 9) | (j11 + j11) | ((((long) bArr[4]) & 255) >> 7);
    }

    public static WindowManager.LayoutParams y() {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-2, -2, 0, 0, -2);
        layoutParams.flags = ((Integer) C3099q.f26624d.f26627c.a(Q7.q7)).intValue();
        layoutParams.type = 2;
        layoutParams.gravity = 8388659;
        return layoutParams;
    }

    public static void z(SpannableStringBuilder spannableStringBuilder, Object obj, int i8, int i9) {
        for (Object obj2 : spannableStringBuilder.getSpans(i8, i9, obj.getClass())) {
            if (spannableStringBuilder.getSpanStart(obj2) == i8 && spannableStringBuilder.getSpanEnd(obj2) == i9 && spannableStringBuilder.getSpanFlags(obj2) == 33) {
                spannableStringBuilder.removeSpan(obj2);
            }
        }
        spannableStringBuilder.setSpan(obj, i8, i9, 33);
    }

    public abstract void u(int i8, byte[] bArr, int i9);
}
