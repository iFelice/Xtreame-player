package p113o3;

import android.app.Activity;
import android.graphics.Rect;
import android.media.AudioManager;
import android.text.TextUtils;
import android.view.DisplayCutout;
import android.view.View;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowManager;
import com.google.android.gms.internal.ads.C1625le;
import com.google.android.gms.internal.ads.Q7;
import java.util.Locale;
import okhttp3.HttpUrl;
import p083k3.l;
import p090l3.C3099q;

/* JADX INFO: loaded from: classes.dex */
public class T extends Q {
    @Override // F2.G
    public final int V(AudioManager audioManager) {
        return audioManager.getStreamMinVolume(3);
    }

    @Override // F2.G
    public final void W(final Activity activity) {
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15764Y0)).booleanValue() && l.f25980A.f25987g.d().B() == null && !activity.isInMultiWindowMode()) {
            Window window = activity.getWindow();
            WindowManager.LayoutParams attributes = window.getAttributes();
            if (1 != attributes.layoutInDisplayCutoutMode) {
                attributes.layoutInDisplayCutoutMode = 1;
                window.setAttributes(attributes);
            }
            activity.getWindow().getDecorView().setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener() { // from class: o3.S
                @Override // android.view.View.OnApplyWindowInsetsListener
                public final WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                    l lVar = l.f25980A;
                    if (lVar.f25987g.d().B() == null) {
                        DisplayCutout displayCutout = windowInsets.getDisplayCutout();
                        C1625le c1625le = lVar.f25987g;
                        String strConcat = HttpUrl.FRAGMENT_ENCODE_SET;
                        if (displayCutout != null) {
                            L lD = c1625le.d();
                            for (Rect rect : displayCutout.getBoundingRects()) {
                                Locale locale = Locale.US;
                                String str = rect.left + "," + rect.top + "," + rect.right + "," + rect.bottom;
                                if (!TextUtils.isEmpty(strConcat)) {
                                    strConcat = strConcat.concat("|");
                                }
                                strConcat = strConcat.concat(str);
                            }
                            lD.c(strConcat);
                        } else {
                            c1625le.d().c(HttpUrl.FRAGMENT_ENCODE_SET);
                        }
                    }
                    Window window2 = activity.getWindow();
                    WindowManager.LayoutParams attributes2 = window2.getAttributes();
                    if (2 != attributes2.layoutInDisplayCutoutMode) {
                        attributes2.layoutInDisplayCutoutMode = 2;
                        window2.setAttributes(attributes2);
                    }
                    return view.onApplyWindowInsets(windowInsets);
                }
            });
        }
    }
}
