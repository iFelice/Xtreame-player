package p113o3;

import F2.G;
import android.app.Activity;
import android.content.res.Configuration;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import com.google.android.gms.internal.ads.J7;
import com.google.android.gms.internal.ads.O7;
import com.google.android.gms.internal.ads.Q7;
import p083k3.l;
import p090l3.C3097p;
import p090l3.C3099q;
import p120p3.d;

/* JADX INFO: loaded from: classes.dex */
public class P extends G {
    @Override // F2.G
    public final boolean Q(Activity activity, Configuration configuration) {
        J7 j8 = Q7.f15959v4;
        C3099q c3099q = C3099q.f26624d;
        if (!((Boolean) c3099q.f26627c.a(j8)).booleanValue()) {
            return false;
        }
        J7 j9 = Q7.f15974x4;
        O7 o7 = c3099q.f26627c;
        if (((Boolean) o7.a(j9)).booleanValue()) {
            return activity.isInMultiWindowMode();
        }
        d dVar = C3097p.f26618f.f26619a;
        int iO = d.o(activity, configuration.screenHeightDp);
        int iL = d.l(activity.getResources().getDisplayMetrics(), configuration.screenWidthDp);
        WindowManager windowManager = (WindowManager) activity.getApplicationContext().getSystemService("window");
        O o4 = l.f25980A.f25983c;
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        int i8 = displayMetrics.heightPixels;
        int i9 = displayMetrics.widthPixels;
        int identifier = activity.getResources().getIdentifier("status_bar_height", "dimen", "android");
        int dimensionPixelSize = identifier > 0 ? activity.getResources().getDimensionPixelSize(identifier) : 0;
        int iIntValue = ((Integer) o7.a(Q7.f15943t4)).intValue() * ((int) Math.round(((double) activity.getResources().getDisplayMetrics().density) + 0.5d));
        return !(Math.abs(i8 - (iO + dimensionPixelSize)) <= iIntValue) || Math.abs(i9 - iL) > iIntValue;
    }
}
