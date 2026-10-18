package p014b5;

import android.view.View;
import android.widget.ScrollView;

/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public View f9871a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f9872b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f9873c;

    public final int a() {
        View view = this.f9871a;
        if (view.getVisibility() == 8) {
            return 0;
        }
        if (!(view instanceof ScrollView)) {
            return view.getMeasuredHeight();
        }
        ScrollView scrollView = (ScrollView) view;
        return scrollView.getChildAt(0).getMeasuredHeight() + scrollView.getPaddingTop() + scrollView.getPaddingBottom();
    }
}
