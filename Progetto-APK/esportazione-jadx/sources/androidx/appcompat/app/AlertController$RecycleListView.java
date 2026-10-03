package androidx.appcompat.app;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.ListView;
import p031e.a;

/* JADX INFO: loaded from: classes.dex */
public class AlertController$RecycleListView extends ListView {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f8728G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final int f8729H;

    public AlertController$RecycleListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.f24705t);
        this.f8729H = typedArrayObtainStyledAttributes.getDimensionPixelOffset(0, -1);
        this.f8728G = typedArrayObtainStyledAttributes.getDimensionPixelOffset(1, -1);
    }
}
