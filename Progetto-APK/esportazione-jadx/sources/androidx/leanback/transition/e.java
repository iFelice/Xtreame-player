package androidx.leanback.transition;

import android.view.View;
import p190y4.k;

/* JADX INFO: loaded from: classes.dex */
public final class e extends k {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f9067G;

    @Override // androidx.leanback.transition.f
    public final float b(View view) {
        switch (this.f9067G) {
            case 0:
                return view.getTranslationY() - view.getHeight();
            default:
                return view.getTranslationY() + view.getHeight();
        }
    }
}
