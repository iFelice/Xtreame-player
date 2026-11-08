package p093m;

import android.app.Notification;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.graphics.drawable.Icon;
import android.icu.text.DecimalFormatSymbols;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.text.PrecomputedText;
import android.view.ViewConfiguration;
import android.widget.TextView;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public abstract class d {
    public static Handler a(Looper looper) {
        return Handler.createAsync(looper);
    }

    public static Handler b(Looper looper) {
        return Handler.createAsync(looper);
    }

    public static String[] c(DecimalFormatSymbols decimalFormatSymbols) {
        return decimalFormatSymbols.getDigitStrings();
    }

    public static long d(PackageInfo packageInfo) {
        return packageInfo.getLongVersionCode();
    }

    public static Executor e(Context context) {
        return context.getMainExecutor();
    }

    public static int f(Object obj) {
        return ((Icon) obj).getResId();
    }

    public static String g(Object obj) {
        return ((Icon) obj).getResPackage();
    }

    public static int h(ViewConfiguration viewConfiguration) {
        return viewConfiguration.getScaledHoverSlop();
    }

    public static PrecomputedText.Params i(TextView textView) {
        return textView.getTextMetricsParams();
    }

    public static int j(Object obj) {
        return ((Icon) obj).getType();
    }

    public static Uri k(Object obj) {
        return ((Icon) obj).getUri();
    }

    public static void l(TextView textView, int i8) {
        textView.setFirstBaselineToTopHeight(i8);
    }

    public static void m(Notification.Action.Builder builder, int i8) {
        builder.setSemanticAction(i8);
    }

    public static boolean n(ViewConfiguration viewConfiguration) {
        return viewConfiguration.shouldShowMenuShortcutsWhenKeyboardPresent();
    }
}
