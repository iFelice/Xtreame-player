package M2;

import android.content.Context;
import android.graphics.Point;
import android.util.Log;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static Integer f4784d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final View f4785a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f4786b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public d f4787c;

    public e(View view) {
        this.f4785a = view;
    }

    public final int a(int i8, int i9, int i10) {
        int i11 = i9 - i10;
        if (i11 > 0) {
            return i11;
        }
        int i12 = i8 - i10;
        if (i12 > 0) {
            return i12;
        }
        View view = this.f4785a;
        if (view.isLayoutRequested() || i9 != -2) {
            return 0;
        }
        if (Log.isLoggable("CustomViewTarget", 4)) {
            Log.i("CustomViewTarget", "Glide treats LayoutParams.WRAP_CONTENT as a request for an image the size of this device's screen dimensions. If you want to load the original image and are ok with the corresponding memory cost and OOMs (depending on the input size), use .override(Target.SIZE_ORIGINAL). Otherwise, use LayoutParams.MATCH_PARENT, set layout_width and layout_height to fixed dimension, or use .override() with fixed dimensions.");
        }
        Context context = view.getContext();
        if (f4784d == null) {
            WindowManager windowManager = (WindowManager) context.getSystemService("window");
            p102n0.c.c(windowManager, "Argument must not be null");
            Display defaultDisplay = windowManager.getDefaultDisplay();
            Point point = new Point();
            defaultDisplay.getSize(point);
            f4784d = Integer.valueOf(Math.max(point.x, point.y));
        }
        return f4784d.intValue();
    }
}
