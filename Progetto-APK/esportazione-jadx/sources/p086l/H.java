package p086l;

import D.r;
import W.a;
import android.app.Activity;
import android.app.AppOpsManager;
import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Icon;
import android.graphics.drawable.LayerDrawable;
import android.media.MediaMetadataRetriever;
import android.media.MediaRouter;
import android.os.Build;
import android.widget.CompoundButton;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.core.graphics.drawable.IconCompat;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public abstract class H {
    public static Notification.Action.Builder a(Icon icon, CharSequence charSequence, PendingIntent pendingIntent) {
        return new Notification.Action.Builder(icon, charSequence, pendingIntent);
    }

    public static int b(TextView textView) {
        return textView.getBreakStrategy();
    }

    public static Drawable c(CompoundButton compoundButton) {
        return compoundButton.getButtonDrawable();
    }

    public static int d(Context context, int i8) {
        return context.getColor(i8);
    }

    public static ColorStateList e(int i8, Resources.Theme theme, Resources resources) {
        return resources.getColorStateList(i8, theme);
    }

    public static int f(TextView textView) {
        return textView.getHyphenationFrequency();
    }

    public static int g(Drawable drawable) {
        return drawable.getLayoutDirection();
    }

    public static Object h(Context context) {
        return context.getSystemService(AppOpsManager.class);
    }

    public static Object i(Context context) {
        return context.getSystemService(MediaRouter.class);
    }

    public static String j(Context context) {
        return context.getSystemServiceName(MediaRouter.class);
    }

    public static int k(AppOpsManager appOpsManager, String str, String str2) {
        return appOpsManager.noteProxyOpNoThrow(str, str2);
    }

    public static String l(String str) {
        return AppOpsManager.permissionToOp(str);
    }

    public static void m(Activity activity, String[] strArr, int i8) {
        activity.requestPermissions(strArr, i8);
    }

    public static void n(TextView textView, int i8) {
        textView.setBreakStrategy(i8);
    }

    public static void o(TextView textView, ColorStateList colorStateList) {
        textView.setCompoundDrawableTintList(colorStateList);
    }

    public static void p(TextView textView, PorterDuff.Mode mode) {
        textView.setCompoundDrawableTintMode(mode);
    }

    public static void q(MediaMetadataRetriever mediaMetadataRetriever, a aVar) {
        mediaMetadataRetriever.setDataSource(aVar);
    }

    public static void r(TextView textView, int i8) {
        textView.setHyphenationFrequency(i8);
    }

    public static void s(Notification.Builder builder, Icon icon) {
        builder.setLargeIcon(icon);
    }

    public static boolean t(Drawable drawable, int i8) {
        return drawable.setLayoutDirection(i8);
    }

    public static void u(G g8, boolean z7) {
        g8.setOverlapAnchor(z7);
    }

    public static void v(PopupWindow popupWindow, int i8) {
        popupWindow.setWindowLayoutType(i8);
    }

    public static Icon w(IconCompat iconCompat, Context context) {
        Icon iconCreateWithBitmap;
        switch (iconCompat.f9003a) {
            case -1:
                return (Icon) iconCompat.f9004b;
            case 0:
            default:
                throw new IllegalArgumentException("Unknown type");
            case 1:
                iconCreateWithBitmap = Icon.createWithBitmap((Bitmap) iconCompat.f9004b);
                break;
            case 2:
                iconCreateWithBitmap = Icon.createWithResource(iconCompat.f(), iconCompat.f9007e);
                break;
            case 3:
                iconCreateWithBitmap = Icon.createWithData((byte[]) iconCompat.f9004b, iconCompat.f9007e, iconCompat.f9008f);
                break;
            case 4:
                iconCreateWithBitmap = Icon.createWithContentUri((String) iconCompat.f9004b);
                break;
            case 5:
                iconCreateWithBitmap = Build.VERSION.SDK_INT < 26 ? Icon.createWithBitmap(IconCompat.b((Bitmap) iconCompat.f9004b, false)) : r.b((Bitmap) iconCompat.f9004b);
                break;
            case 6:
                int i8 = Build.VERSION.SDK_INT;
                if (i8 >= 30) {
                    iconCreateWithBitmap = H.a.a(iconCompat.h());
                } else {
                    if (context == null) {
                        throw new IllegalArgumentException("Context is required to resolve the file uri of the icon: " + iconCompat.h());
                    }
                    InputStream inputStreamI = iconCompat.i(context);
                    if (inputStreamI == null) {
                        throw new IllegalStateException("Cannot load adaptive icon from uri: " + iconCompat.h());
                    }
                    if (i8 < 26) {
                        iconCreateWithBitmap = Icon.createWithBitmap(IconCompat.b(BitmapFactory.decodeStream(inputStreamI), false));
                    } else {
                        iconCreateWithBitmap = r.b(BitmapFactory.decodeStream(inputStreamI));
                    }
                }
                break;
        }
        ColorStateList colorStateList = iconCompat.f9009g;
        if (colorStateList != null) {
            iconCreateWithBitmap.setTintList(colorStateList);
        }
        PorterDuff.Mode mode = iconCompat.f9010h;
        if (mode != IconCompat.f9002k) {
            iconCreateWithBitmap.setTintMode(mode);
        }
        return iconCreateWithBitmap;
    }

    public static void x(LayerDrawable layerDrawable, LayerDrawable layerDrawable2, int i8) {
        layerDrawable2.setLayerGravity(i8, layerDrawable.getLayerGravity(i8));
        layerDrawable2.setLayerWidth(i8, layerDrawable.getLayerWidth(i8));
        layerDrawable2.setLayerHeight(i8, layerDrawable.getLayerHeight(i8));
        layerDrawable2.setLayerInsetLeft(i8, layerDrawable.getLayerInsetLeft(i8));
        layerDrawable2.setLayerInsetRight(i8, layerDrawable.getLayerInsetRight(i8));
        layerDrawable2.setLayerInsetTop(i8, layerDrawable.getLayerInsetTop(i8));
        layerDrawable2.setLayerInsetBottom(i8, layerDrawable.getLayerInsetBottom(i8));
        layerDrawable2.setLayerInsetStart(i8, layerDrawable.getLayerInsetStart(i8));
        layerDrawable2.setLayerInsetEnd(i8, layerDrawable.getLayerInsetEnd(i8));
    }
}
