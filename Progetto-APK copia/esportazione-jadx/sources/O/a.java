package O;

import android.os.Bundle;
import android.text.style.ClickableSpan;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public final class a extends ClickableSpan {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f5004a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final f f5005b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f5006c;

    public a(int i8, f fVar, int i9) {
        this.f5004a = i8;
        this.f5005b = fVar;
        this.f5006c = i9;
    }

    @Override // android.text.style.ClickableSpan
    public final void onClick(View view) {
        Bundle bundle = new Bundle();
        bundle.putInt("ACCESSIBILITY_CLICKABLE_SPAN_ID", this.f5004a);
        this.f5005b.f5019a.performAction(this.f5006c, bundle);
    }
}
