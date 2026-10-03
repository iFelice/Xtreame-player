package p090l3;

import B.f;
import android.content.Context;
import android.os.Bundle;
import com.google.ads.mediation.admob.AdMobAdapter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.StringTokenizer;
import okhttp3.HttpUrl;
import p043f3.o;
import p120p3.d;

/* JADX INFO: loaded from: classes.dex */
public final class c1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final c1 f26545a = new c1();

    /* JADX WARN: Code duplicated, block: B:12:0x0045  */
    /* JADX WARN: Code duplicated, block: B:48:0x00f5  */
    public static b1 a(Context context, G0 g8) {
        boolean z7;
        String str;
        String className;
        g8.getClass();
        Set set = g8.f26460b;
        List listUnmodifiableList = !set.isEmpty() ? Collections.unmodifiableList(new ArrayList(set)) : null;
        o oVar = J0.a().f26487b;
        d dVar = C3097p.f26618f.f26619a;
        String strP = d.p(context);
        if (g8.f26464f.contains(strP)) {
            z7 = true;
        } else {
            oVar.getClass();
            if (new ArrayList(oVar.f25193d).contains(strP)) {
                z7 = true;
            } else {
                z7 = false;
            }
        }
        Bundle bundle = g8.f26461c.getBundle(AdMobAdapter.class.getName());
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            String packageName = applicationContext.getPackageName();
            StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
            int i8 = 0;
            while (true) {
                int i9 = i8 + 1;
                if (i9 >= stackTrace.length) {
                    className = null;
                    break;
                }
                StackTraceElement stackTraceElement = stackTrace[i8];
                String className2 = stackTraceElement.getClassName();
                if ("loadAd".equalsIgnoreCase(stackTraceElement.getMethodName()) && (d.f28203c.equalsIgnoreCase(className2) || d.f28204d.equalsIgnoreCase(className2) || d.f28205e.equalsIgnoreCase(className2) || d.f28206f.equalsIgnoreCase(className2) || d.f28207g.equalsIgnoreCase(className2) || d.f28208h.equalsIgnoreCase(className2))) {
                    className = stackTrace[i9].getClassName();
                    break;
                }
                i8 = i9;
            }
            if (packageName != null) {
                StringTokenizer stringTokenizer = new StringTokenizer(packageName, ".");
                StringBuilder sb = new StringBuilder();
                if (stringTokenizer.hasMoreElements()) {
                    sb.append(stringTokenizer.nextToken());
                    for (int i10 = 2; i10 > 0 && stringTokenizer.hasMoreElements(); i10--) {
                        sb.append(".");
                        sb.append(stringTokenizer.nextToken());
                    }
                    packageName = sb.toString();
                }
                if (className == null || className.contains(packageName)) {
                    className = null;
                }
            } else {
                className = null;
            }
            str = className;
        } else {
            str = null;
        }
        o oVar2 = J0.a().f26487b;
        int iMax = Math.max(g8.f26463e, oVar2.f25190a);
        String[] strArr = new String[2];
        strArr[0] = null;
        String str2 = oVar2.f25192c;
        if (str2 == null) {
            str2 = HttpUrl.FRAGMENT_ENCODE_SET;
        }
        strArr[1] = str2;
        return new b1(8, -1L, bundle, -1, listUnmodifiableList, z7, iMax, false, null, null, null, null, g8.f26461c, g8.f26465g, Collections.unmodifiableList(new ArrayList(g8.f26466h)), null, str, g8.f26467i, null, oVar2.f25191b, (String) Collections.max(Arrays.asList(strArr), new f(5)), new ArrayList(g8.f26459a), g8.f26468j, null, oVar2.f25194e.f25188G, g8.f26469k);
    }
}
