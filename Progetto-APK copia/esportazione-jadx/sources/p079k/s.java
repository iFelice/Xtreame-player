package p079k;

import android.view.CollapsibleActionView;
import android.view.View;
import android.widget.FrameLayout;
import p071j.c;

/* JADX INFO: loaded from: classes.dex */
public final class s extends FrameLayout implements c {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final CollapsibleActionView f25880G;

    /* JADX WARN: Multi-variable type inference failed */
    public s(View view) {
        super(view.getContext());
        this.f25880G = (CollapsibleActionView) view;
        addView(view);
    }
}
