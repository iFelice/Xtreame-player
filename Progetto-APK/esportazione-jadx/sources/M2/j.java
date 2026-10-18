package M2;

import android.content.Context;
import android.graphics.Point;
import android.util.Log;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class j {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static Integer f4793d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final View f4794a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f4795b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public d f4796c;

    public j(View view) {
        this.f4794a = view;
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
        View view = this.f4794a;
        if (view.isLayoutRequested() || i9 != -2) {
            return 0;
        }
        if (Log.isLoggable("ViewTarget", 4)) {
            Log.i("ViewTarget", "Glide treats LayoutParams.WRAP_CONTENT as a request for an image the size of this device's screen dimensions. If you want to load the original image and are ok with the corresponding memory cost and OOMs (depending on the input size), use override(Target.SIZE_ORIGINAL). Otherwise, use LayoutParams.MATCH_PARENT, set layout_width and layout_height to fixed dimension, or use .override() with fixed dimensions.");
        }
        Context context = view.getContext();
        if (f4793d == null) {
            WindowManager windowManager = (WindowManager) context.getSystemService("window");
            p102n0.c.c(windowManager, "Argument must not be null");
            Display defaultDisplay = windowManager.getDefaultDisplay();
            Point point = new Point();
            defaultDisplay.getSize(point);
            f4793d = Integer.valueOf(Math.max(point.x, point.y));
        }
        return f4793d.intValue();
    }
}
