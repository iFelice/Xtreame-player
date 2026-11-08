package C1;

import U0.t;
import android.util.SparseBooleanArray;
import android.view.SurfaceHolder;
import com.google.android.gms.internal.measurement.H1;
import p094m0.Z;

/* JADX INFO: loaded from: classes.dex */
public abstract class a extends Z implements t, SurfaceHolder.Callback {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public static final /* synthetic */ int f1342H = 0;

    static {
        SparseBooleanArray sparseBooleanArray = new SparseBooleanArray();
        int[] iArr = {1, 2, 3, 5, 8, 4, 11, 12, 16, 17, 15, 27, 22, 24, 32};
        for (int i8 = 0; i8 < 15; i8++) {
            int i9 = iArr[i8];
            H1.i(!false);
            sparseBooleanArray.append(i9, true);
        }
        H1.i(!false);
    }
}
