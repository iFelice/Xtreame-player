package p113o3;

import F2.G;
import J3.j;
import Q3.c;
import T1.a;
import U2.m;
import android.R;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.AlertDialog;
import android.app.KeyguardManager;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.PowerManager;
import android.os.Process;
import android.os.RemoteException;
import android.text.TextUtils;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.webkit.WebSettings;
import com.google.android.gms.internal.ads.AbstractC1159cd;
import com.google.android.gms.internal.ads.C1036a8;
import com.google.android.gms.internal.ads.C1582kn;
import com.google.android.gms.internal.ads.C2061tz;
import com.google.android.gms.internal.ads.Cw;
import com.google.android.gms.internal.ads.InterfaceC0715Ef;
import com.google.android.gms.internal.ads.J7;
import com.google.android.gms.internal.ads.O7;
import com.google.android.gms.internal.ads.Ov;
import com.google.android.gms.internal.ads.Q7;
import com.google.android.gms.internal.ads.Qv;
import com.google.android.gms.internal.ads.RJ;
import com.google.android.gms.internal.ads.Xu;
import com.google.protobuf.U2;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;
import okhttp3.HttpUrl;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p004a3.b;
import p039f.AbstractC2987b;
import p090l3.C3097p;
import p090l3.C3099q;
import p096m2.l;
import p109o.g;
import p120p3.h;
import u3.d;

/* JADX INFO: loaded from: classes.dex */
public final class O {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final J f27924l = new J(Looper.getMainLooper(), 1);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public String f27931g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public volatile String f27932h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AtomicReference f27925a = new AtomicReference(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AtomicReference f27926b = new AtomicReference(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AtomicReference f27927c = new AtomicReference(new Bundle());

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AtomicBoolean f27928d = new AtomicBoolean();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f27929e = true;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Object f27930f = new Object();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f27933i = false;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f27934j = false;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final ExecutorService f27935k = Executors.newSingleThreadExecutor();

    public static int B(Context context, Uri uri) {
        int i8;
        String strM0;
        if (context == null) {
            I.k("Trying to open chrome custom tab on a null context");
            return 3;
        }
        if (context instanceof Activity) {
            i8 = 0;
        } else {
            I.k("Chrome Custom Tabs can only work with Activity context.");
            i8 = 2;
        }
        J7 j8 = Q7.f15862j4;
        C3099q c3099q = C3099q.f26624d;
        Boolean bool = (Boolean) c3099q.f26627c.a(j8);
        J7 j9 = Q7.f15871k4;
        O7 o7 = c3099q.f26627c;
        if (true == bool.equals(o7.a(j9))) {
            i8 = 9;
        }
        if (i8 != 0) {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(uri);
            intent.addFlags(268435456);
            context.startActivity(intent);
            return i8;
        }
        if (((Boolean) o7.a(j8)).booleanValue()) {
            C1036a8 c1036a8 = new C1036a8();
            c1036a8.f17840d = new b(c1036a8, context, uri);
            Activity activity = (Activity) context;
            if (c1036a8.f17838b == null && (strM0 = Cw.m0(activity)) != null) {
                RJ rj = new RJ(c1036a8);
                c1036a8.f17839c = rj;
                rj.f27591a = activity.getApplicationContext();
                Intent intent2 = new Intent("android.support.customtabs.action.CustomTabsService");
                if (!TextUtils.isEmpty(strM0)) {
                    intent2.setPackage(strM0);
                }
                activity.bindService(intent2, rj, 33);
            }
        }
        if (!((Boolean) o7.a(j9)).booleanValue()) {
            return 5;
        }
        l lVarA = new g().a();
        ((Intent) lVarA.f27231H).setPackage(Cw.m0(context));
        lVarA.l(context, uri);
        return 5;
    }

    /* JADX WARN: Code duplicated, block: B:4:0x0007  */
    public static final boolean C(View view) {
        Activity activity;
        View rootView = view.getRootView();
        if (rootView == null) {
            activity = null;
        } else {
            Context context = rootView.getContext();
            if (context instanceof Activity) {
                activity = (Activity) context;
            } else {
                activity = null;
            }
        }
        if (activity == null) {
            return false;
        }
        Window window = activity.getWindow();
        WindowManager.LayoutParams attributes = window != null ? window.getAttributes() : null;
        return (attributes == null || (attributes.flags & 524288) == 0) ? false : true;
    }

    public static final void D(Context context, Intent intent) {
        if (intent == null) {
            return;
        }
        Bundle extras = intent.getExtras() != null ? intent.getExtras() : new Bundle();
        extras.putBinder("android.support.customtabs.extra.SESSION", null);
        extras.putString("com.android.browser.application_id", context.getPackageName());
        intent.putExtras(extras);
    }

    public static final String E(Context context) {
        if (context.getApplicationContext() != null) {
            context = context.getApplicationContext();
        }
        return s(r(context));
    }

    public static final String F() {
        StringBuilder sb = new StringBuilder(256);
        sb.append("Mozilla/5.0 (Linux; U; Android");
        String str = Build.VERSION.RELEASE;
        if (str != null) {
            sb.append(" ");
            sb.append(str);
        }
        sb.append("; ");
        sb.append(Locale.getDefault());
        String str2 = Build.DEVICE;
        if (str2 != null) {
            sb.append("; ");
            sb.append(str2);
            String str3 = Build.DISPLAY;
            if (str3 != null) {
                sb.append(" Build/");
                sb.append(str3);
            }
        }
        sb.append(") AppleWebKit/533 Version/4.0 Safari/533");
        return sb.toString();
    }

    public static final String G() {
        String str = Build.MANUFACTURER;
        String str2 = Build.MODEL;
        return str2.startsWith(str) ? str2 : U2.l(str, " ", str2);
    }

    public static final HashMap H(String str) {
        HashMap map = new HashMap();
        try {
            JSONObject jSONObject = new JSONObject(str);
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                HashSet hashSet = new HashSet();
                JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(next);
                if (jSONArrayOptJSONArray != null) {
                    for (int i8 = 0; i8 < jSONArrayOptJSONArray.length(); i8++) {
                        String strOptString = jSONArrayOptJSONArray.optString(i8);
                        if (strOptString != null) {
                            hashSet.add(strOptString);
                        }
                    }
                    map.put(next, hashSet);
                }
            }
            return map;
        } catch (JSONException e8) {
            p083k3.l.f25980A.f25987g.i("AdUtil.getMapOfFileNamesToKeysFromJsonString", e8);
            return map;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0, types: [android.view.View] */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v6, types: [android.view.ViewParent] */
    public static final long I(View view) {
        float fMin = Float.MAX_VALUE;
        do {
            if (!(view instanceof View)) {
                break;
            }
            View view2 = (View) view;
            fMin = Math.min(fMin, view2.getAlpha());
            view = view2.getParent();
        } while (fMin > 0.0f);
        return Math.round((fMin >= 0.0f ? fMin : 0.0f) * 100.0f);
    }

    public static final x J(Context context) {
        try {
            Object objNewInstance = context.getClassLoader().loadClass("com.google.android.gms.ads.internal.util.WorkManagerUtil").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
            if (!(objNewInstance instanceof IBinder)) {
                h.d("Instantiated WorkManagerUtil not instance of IBinder.");
                return null;
            }
            IBinder iBinder = (IBinder) objNewInstance;
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.util.IWorkManagerUtil");
            return iInterfaceQueryLocalInterface instanceof x ? (x) iInterfaceQueryLocalInterface : new w(iBinder, "com.google.android.gms.ads.internal.util.IWorkManagerUtil", 0);
        } catch (Exception e8) {
            p083k3.l.f25980A.f25987g.i("Failed to instantiate WorkManagerUtil", e8);
            return null;
        }
    }

    public static final boolean a(Context context, String str) {
        int i8 = AbstractC1159cd.f18227a;
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            context = applicationContext;
        }
        return c.a(context).f23010G.getPackageManager().checkPermission(str, context.getPackageName()) == 0;
    }

    public static final boolean b(Context context) {
        try {
            if (AbstractC2987b.f25034L == null) {
                AbstractC2987b.f25034L = Boolean.valueOf(m.b() && context.getPackageManager().hasSystemFeature("com.google.android.play.feature.HPE_EXPERIENCE"));
            }
            return AbstractC2987b.f25034L.booleanValue();
        } catch (NoSuchMethodError unused) {
            return false;
        }
    }

    public static final boolean c(String str) {
        if (!p120p3.g.c()) {
            return false;
        }
        J7 j8 = Q7.f15594C4;
        C3099q c3099q = C3099q.f26624d;
        if (!((Boolean) c3099q.f26627c.a(j8)).booleanValue()) {
            return false;
        }
        String str2 = (String) c3099q.f26627c.a(Q7.f15610E4);
        if (!str2.isEmpty()) {
            for (String str3 : str2.split(";")) {
                if (str3.equals(str)) {
                    return false;
                }
            }
        }
        String str4 = (String) C3099q.f26624d.f26627c.a(Q7.f15602D4);
        if (str4.isEmpty()) {
            return true;
        }
        for (String str5 : str4.split(";")) {
            if (str5.equals(str)) {
                return true;
            }
        }
        return false;
    }

    public static final boolean d(Context context) {
        try {
            context.getClassLoader().loadClass("com.google.android.gms.ads.internal.ClientApi");
            return false;
        } catch (ClassNotFoundException unused) {
            return true;
        } catch (Throwable th) {
            h.e("Error loading class.", th);
            p083k3.l.f25980A.f25987g.i("AdUtil.isLiteSdk", th);
            return false;
        }
    }

    public static final boolean e(Context context) {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        PowerManager powerManager;
        try {
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            KeyguardManager keyguardManager = (KeyguardManager) context.getSystemService("keyguard");
            if (activityManager == null || keyguardManager == null || (runningAppProcesses = activityManager.getRunningAppProcesses()) == null) {
                return false;
            }
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                if (Process.myPid() == runningAppProcessInfo.pid) {
                    return runningAppProcessInfo.importance != 100 || keyguardManager.inKeyguardRestrictedInputMode() || (powerManager = (PowerManager) context.getSystemService("power")) == null || !powerManager.isScreenOn();
                }
            }
            return true;
        } catch (Throwable unused) {
        }
        return false;
    }

    public static final boolean f(Context context) {
        try {
            Bundle bundleR = r(context);
            return TextUtils.isEmpty(s(bundleR)) && !TextUtils.isEmpty(bundleR.getString("com.google.android.gms.ads.INTEGRATION_MANAGER"));
        } catch (RemoteException unused) {
        }
    }

    public static final boolean g(Context context) {
        Window window;
        if ((context instanceof Activity) && (window = ((Activity) context).getWindow()) != null && window.getDecorView() != null) {
            Rect rect = new Rect();
            Rect rect2 = new Rect();
            window.getDecorView().getGlobalVisibleRect(rect, null);
            window.getDecorView().getWindowVisibleDisplayFrame(rect2);
            if (rect.bottom != 0 && rect2.bottom != 0 && rect.top == rect2.top) {
                return true;
            }
        }
        return false;
    }

    public static final void h(View view, int i8) {
        String strA;
        int i9;
        int iHeight;
        int iWidth;
        String str;
        Ov ovF;
        Qv qvU;
        View childAt = view;
        int[] iArr = new int[2];
        Rect rect = new Rect();
        try {
            String packageName = view.getContext().getPackageName();
            if (childAt instanceof C1582kn) {
                childAt = ((C1582kn) childAt).getChildAt(0);
            }
            if (childAt instanceof d) {
                strA = "NATIVE";
                i9 = 1;
            } else {
                strA = "UNKNOWN";
                i9 = 0;
            }
            if (childAt.getLocalVisibleRect(rect)) {
                iWidth = rect.width();
                iHeight = rect.height();
            } else {
                iHeight = 0;
                iWidth = 0;
            }
            O o4 = p083k3.l.f25980A.f25983c;
            long jI = I(childAt);
            childAt.getLocationOnScreen(iArr);
            int i10 = iArr[0];
            int i11 = iArr[1];
            String str2 = "none";
            if (!(childAt instanceof InterfaceC0715Ef) || (qvU = ((InterfaceC0715Ef) childAt).U()) == null) {
                str = "none";
            } else {
                str = qvU.f16150b;
                childAt.setContentDescription(str + ":" + childAt.hashCode());
            }
            if ((childAt instanceof InterfaceC0715Ef) && (ovF = ((InterfaceC0715Ef) childAt).f()) != null) {
                strA = Ov.a(ovF.f15248b);
                i9 = ovF.f15254e;
                str2 = ovF.f15224E;
            }
            Locale locale = Locale.US;
            h.f("<Ad hashCode=" + childAt.hashCode() + ", package=" + packageName + ", adNetCls=" + str2 + ", gwsQueryId=" + str + ", format=" + strA + ", impType=" + i9 + ", class=" + childAt.getClass().getName() + ", x=" + i10 + ", y=" + i11 + ", width=" + childAt.getWidth() + ", height=" + childAt.getHeight() + ", vWidth=" + iWidth + ", vHeight=" + iHeight + ", alpha=" + jI + ", state=" + Integer.toString(i8, 2) + ">");
        } catch (Exception e8) {
            h.e("Failure getting view location.", e8);
        }
    }

    public static final AlertDialog.Builder i(Context context) {
        G g8 = p083k3.l.f25980A.f25985e;
        return new AlertDialog.Builder(context, R.style.Theme.Material.Dialog.Alert);
    }

    public static final void j(Context context, String str, String str2) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(str2);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            new y(context, str, (String) it.next()).b();
        }
    }

    public static final int k(String str) {
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException e8) {
            h.g("Could not parse value:".concat(e8.toString()));
            return 0;
        }
    }

    public static final HashMap l(Uri uri) {
        if (uri == null) {
            return null;
        }
        HashMap map = new HashMap();
        for (String str : uri.getQueryParameterNames()) {
            if (!TextUtils.isEmpty(str)) {
                map.put(str, uri.getQueryParameter(str));
            }
        }
        return map;
    }

    public static final int[] m(Activity activity) {
        View viewFindViewById;
        Window window = activity.getWindow();
        return (window == null || (viewFindViewById = window.findViewById(R.id.content)) == null) ? new int[]{0, 0} : new int[]{viewFindViewById.getWidth(), viewFindViewById.getHeight()};
    }

    public static final int[] n(Activity activity) {
        View viewFindViewById;
        Window window = activity.getWindow();
        int[] iArr = (window == null || (viewFindViewById = window.findViewById(R.id.content)) == null) ? new int[]{0, 0} : new int[]{viewFindViewById.getTop(), viewFindViewById.getBottom()};
        C3097p c3097p = C3097p.f26618f;
        return new int[]{c3097p.f26619a.f(activity, iArr[0]), c3097p.f26619a.f(activity, iArr[1])};
    }

    public static final boolean o(View view, PowerManager powerManager, KeyguardManager keyguardManager) {
        boolean z7 = p083k3.l.f25980A.f25983c.f27929e || keyguardManager == null || !keyguardManager.inKeyguardRestrictedInputMode() || C(view);
        long jI = I(view);
        if (view.getVisibility() == 0 && view.isShown() && ((powerManager == null || powerManager.isScreenOn()) && z7)) {
            J7 j8 = Q7.f15814e1;
            C3099q c3099q = C3099q.f26624d;
            if (!((Boolean) c3099q.f26627c.a(j8)).booleanValue() || view.getLocalVisibleRect(new Rect()) || view.getGlobalVisibleRect(new Rect())) {
                J7 j9 = Q7.R9;
                O7 o7 = c3099q.f26627c;
                if (!((Boolean) o7.a(j9)).booleanValue() || jI >= ((Integer) o7.a(Q7.T9)).intValue()) {
                    return true;
                }
            }
        }
        return false;
    }

    public static final void p(Context context, Intent intent) {
        if (!((Boolean) C3099q.f26624d.f26627c.a(Q7.oa)).booleanValue()) {
            try {
                context.startActivity(intent);
                return;
            } catch (Throwable unused) {
                intent.addFlags(268435456);
                context.startActivity(intent);
                return;
            }
        }
        try {
            try {
                context.startActivity(intent);
            } catch (SecurityException e8) {
                h.h(HttpUrl.FRAGMENT_ENCODE_SET, e8);
                p083k3.l.f25980A.f25987g.i("AdUtil.startActivityWithUnknownContext", e8);
            }
        } catch (Throwable unused2) {
            intent.addFlags(268435456);
            context.startActivity(intent);
        }
    }

    public static final void q(Context context, Uri uri) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW", uri);
            Bundle bundle = new Bundle();
            intent.putExtras(bundle);
            D(context, intent);
            bundle.putString("com.android.browser.application_id", context.getPackageName());
            context.startActivity(intent);
            h.b("Opening " + uri.toString() + " in a new browser.");
        } catch (ActivityNotFoundException e8) {
            h.e("No browser is found.", e8);
        }
    }

    public static Bundle r(Context context) {
        try {
            return c.a(context).b(128, context.getPackageName()).metaData;
        } catch (PackageManager.NameNotFoundException | NullPointerException e8) {
            I.l("Error getting metadata", e8);
            return null;
        }
    }

    public static String s(Bundle bundle) {
        if (bundle == null) {
            return HttpUrl.FRAGMENT_ENCODE_SET;
        }
        String string = bundle.getString("com.google.android.gms.ads.APPLICATION_ID");
        if (TextUtils.isEmpty(string)) {
            return HttpUrl.FRAGMENT_ENCODE_SET;
        }
        return (string.matches("^ca-app-pub-[0-9]{16}~[0-9]{10}$") || string.matches("^/\\d+~.+$")) ? string : HttpUrl.FRAGMENT_ENCODE_SET;
    }

    public static int t(int i8) {
        if (i8 >= 5000) {
            return i8;
        }
        if (i8 <= 0) {
            return 60000;
        }
        h.g("HTTP timeout too low: " + i8 + " milliseconds. Reverting to default timeout: 60000 milliseconds.");
        return 60000;
    }

    public static boolean u(String str, AtomicReference atomicReference, String str2) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            Pattern patternCompile = (Pattern) atomicReference.get();
            if (patternCompile == null || !str2.equals(patternCompile.pattern())) {
                patternCompile = Pattern.compile(str2);
                atomicReference.set(patternCompile);
            }
            return patternCompile.matcher(str).matches();
        } catch (PatternSyntaxException unused) {
            return false;
        }
    }

    public static final String v(Context context, String str) {
        String strF;
        if (str == null) {
            return F();
        }
        try {
            if (a.f6517H == null) {
                a.f6517H = new a();
            }
            a aVar = a.f6517H;
            if (TextUtils.isEmpty(aVar.f6518G)) {
                aVar.f6518G = (String) r.l(context, new F(0, j.a(context), context));
            }
            strF = aVar.f6518G;
        } catch (Exception unused) {
            strF = null;
        }
        if (TextUtils.isEmpty(strF)) {
            strF = WebSettings.getDefaultUserAgent(context);
        }
        if (TextUtils.isEmpty(strF)) {
            strF = F();
        }
        String strL = U2.l(strF, " (Mobile; ", str);
        try {
            if (c.a(context).d()) {
                strL = strL + ";aia";
            }
        } catch (Exception e8) {
            p083k3.l.f25980A.f25987g.i("AdUtil.getUserAgent", e8);
        }
        return strL.concat(")");
    }

    public static ArrayList x() {
        J7 j8 = Q7.f15777a;
        ArrayList<String> arrayListD = C3099q.f26624d.f26625a.d();
        ArrayList arrayList = new ArrayList();
        for (String str : arrayListD) {
            Xu xuJ = Xu.j(new C2061tz(','));
            str.getClass();
            Iterator itT = xuJ.t(str);
            while (itT.hasNext()) {
                try {
                    arrayList.add(Long.valueOf((String) itT.next()));
                } catch (NumberFormatException unused) {
                    I.k("Experiment ID is not a number");
                }
            }
        }
        return arrayList;
    }

    public final void A(Context context) {
        if (this.f27933i) {
            return;
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        Q7.a(context);
        int i8 = 9;
        if (!((Boolean) C3099q.f26624d.f26627c.a(Q7.na)).booleanValue() || Build.VERSION.SDK_INT < 33) {
            context.getApplicationContext().registerReceiver(new p039f.G(i8, this), intentFilter);
        } else {
            context.getApplicationContext().registerReceiver(new p039f.G(i8, this), intentFilter, 4);
        }
        this.f27933i = true;
    }

    public final String w(Context context, String str) {
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.Ba)).booleanValue()) {
            if (this.f27932h != null) {
                return this.f27932h;
            }
            this.f27932h = v(context, str);
            return this.f27932h;
        }
        synchronized (this.f27930f) {
            try {
                String str2 = this.f27931g;
                if (str2 != null) {
                    return str2;
                }
                String strV = v(context, str);
                this.f27931g = strV;
                return strV;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void y(Context context, String str, HttpURLConnection httpURLConnection, int i8) {
        int iT = t(i8);
        h.f("HTTP timeout: " + iT + " milliseconds.");
        httpURLConnection.setConnectTimeout(iT);
        httpURLConnection.setInstanceFollowRedirects(false);
        httpURLConnection.setReadTimeout(iT);
        if (TextUtils.isEmpty(httpURLConnection.getRequestProperty("User-Agent"))) {
            httpURLConnection.setRequestProperty("User-Agent", w(context, str));
        }
        httpURLConnection.setUseCaches(false);
    }

    public final void z(Context context) {
        if (this.f27934j) {
            return;
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.google.android.ads.intent.DEBUG_LOGGING_ENABLEMENT_CHANGED");
        Q7.a(context);
        int i8 = 0;
        if (!((Boolean) C3099q.f26624d.f26627c.a(Q7.na)).booleanValue() || Build.VERSION.SDK_INT < 33) {
            context.getApplicationContext().registerReceiver(new N(i8), intentFilter);
        } else {
            context.getApplicationContext().registerReceiver(new N(i8), intentFilter, 4);
        }
        this.f27934j = true;
    }
}
