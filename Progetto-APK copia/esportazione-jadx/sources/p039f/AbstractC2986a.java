package p039f;

import android.view.ViewGroup;

/* JADX INFO: renamed from: f.a, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC2986a extends ViewGroup.MarginLayoutParams {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f25028a;

    public AbstractC2986a(AbstractC2986a abstractC2986a) {
        super((ViewGroup.MarginLayoutParams) abstractC2986a);
        this.f25028a = 0;
        this.f25028a = abstractC2986a.f25028a;
    }

    public AbstractC2986a(ViewGroup.LayoutParams layoutParams) {
        super(layoutParams);
        this.f25028a = 0;
    }
}
