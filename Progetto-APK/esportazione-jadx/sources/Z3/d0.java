package Z3;

import android.app.Activity;
import android.app.Application;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.DisplayCutout;
import android.view.View;
import android.view.Window;
import android.view.WindowInsets;
import com.google.android.gms.internal.ads.C0848Nd;
import com.google.android.gms.internal.ads.Cw;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public final class d0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Application f8305a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C0427i f8306b;

    public d0(Application application, C0427i c0427i) {
        this.f8305a = application;
        this.f8306b = c0427i;
    }

    public final C0848Nd a(Activity activity, p168v4.b bVar) throws a0 {
        Bundle bundle;
        List listEmptyList;
        List listEmptyList2;
        PackageInfo packageInfo;
        G.c cVar = bVar.f30724c;
        Application application = this.f8305a;
        if (cVar == null) {
            boolean z7 = Cw.e0() || new ArrayList().contains(C.m(application.getApplicationContext()));
            G.c cVar2 = new G.c();
            cVar2.f3280H = z7;
            cVar2.f3279G = 0;
            cVar = cVar2;
        }
        C0848Nd c0848Nd = new C0848Nd(3);
        String string = bVar.f30723b;
        if (TextUtils.isEmpty(string)) {
            try {
                bundle = application.getPackageManager().getApplicationInfo(application.getPackageName(), 128).metaData;
            } catch (PackageManager.NameNotFoundException unused) {
                bundle = null;
            }
            if (bundle != null) {
                string = bundle.getString("com.google.android.gms.ads.APPLICATION_ID");
            }
            if (TextUtils.isEmpty(string)) {
                throw new a0(3, "The UMP SDK requires a valid application ID in your AndroidManifest.xml through a com.google.android.gms.ads.APPLICATION_ID meta-data tag.\nExample AndroidManifest:\n    <meta-data\n        android:name=\"com.google.android.gms.ads.APPLICATION_ID\"\n        android:value=\"ca-app-pub-0000000000000000~0000000000\">");
            }
        }
        c0848Nd.f14911a = string;
        if (cVar.f3280H) {
            ArrayList arrayList = new ArrayList();
            int i8 = cVar.f3279G;
            if (i8 == 1) {
                arrayList.add(EnumC0443z.f8409G);
            } else if (i8 == 2) {
                arrayList.add(EnumC0443z.f8412J);
            } else if (i8 == 3) {
                arrayList.add(EnumC0443z.f8410H);
            } else if (i8 == 4) {
                arrayList.add(EnumC0443z.f8411I);
            }
            arrayList.add(EnumC0443z.f8413K);
            listEmptyList = arrayList;
        } else {
            listEmptyList = Collections.emptyList();
        }
        c0848Nd.f14919i = listEmptyList;
        c0848Nd.f14915e = this.f8306b.a();
        c0848Nd.f14914d = Boolean.valueOf(bVar.f30722a);
        c0848Nd.f14913c = Locale.getDefault().toLanguageTag();
        F.d dVar = new F.d(12);
        int i9 = Build.VERSION.SDK_INT;
        dVar.f2963J = Integer.valueOf(i9);
        dVar.f2962I = Build.MODEL;
        dVar.f2961H = 2;
        c0848Nd.f14912b = dVar;
        Configuration configuration = application.getResources().getConfiguration();
        application.getResources().getConfiguration();
        p096m2.o oVar = new p096m2.o(7);
        oVar.f27236G = Integer.valueOf(configuration.screenWidthDp);
        oVar.f27237H = Integer.valueOf(configuration.screenHeightDp);
        oVar.f27238I = Double.valueOf(application.getResources().getDisplayMetrics().density);
        if (i9 < 28) {
            listEmptyList2 = Collections.emptyList();
        } else {
            Window window = activity == null ? null : activity.getWindow();
            View decorView = window == null ? null : window.getDecorView();
            WindowInsets rootWindowInsets = decorView == null ? null : decorView.getRootWindowInsets();
            DisplayCutout displayCutout = rootWindowInsets == null ? null : rootWindowInsets.getDisplayCutout();
            if (displayCutout == null) {
                listEmptyList2 = Collections.emptyList();
            } else {
                displayCutout.getSafeInsetBottom();
                ArrayList arrayList2 = new ArrayList();
                for (Rect rect : displayCutout.getBoundingRects()) {
                    if (rect != null) {
                        A a8 = new A();
                        a8.f8239b = Integer.valueOf(rect.left);
                        a8.f8240c = Integer.valueOf(rect.right);
                        a8.f8238a = Integer.valueOf(rect.top);
                        a8.f8241d = Integer.valueOf(rect.bottom);
                        arrayList2.add(a8);
                    }
                }
                listEmptyList2 = arrayList2;
            }
        }
        oVar.f27239J = listEmptyList2;
        c0848Nd.f14916f = oVar;
        try {
            packageInfo = application.getPackageManager().getPackageInfo(application.getPackageName(), 0);
        } catch (PackageManager.NameNotFoundException unused2) {
            packageInfo = null;
        }
        C0442y c0442y = new C0442y(0);
        c0442y.f8406a = application.getPackageName();
        CharSequence applicationLabel = application.getPackageManager().getApplicationLabel(application.getApplicationInfo());
        c0442y.f8407b = applicationLabel != null ? applicationLabel.toString() : null;
        if (packageInfo != null) {
            c0442y.f8408c = Long.toString(Build.VERSION.SDK_INT >= 28 ? packageInfo.getLongVersionCode() : packageInfo.versionCode);
        }
        c0848Nd.f14917g = c0442y;
        p120p3.e eVar = new p120p3.e(3);
        eVar.f28211H = "3.2.0";
        c0848Nd.f14918h = eVar;
        return c0848Nd;
    }
}
