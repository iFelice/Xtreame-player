package pe.hf.black20;

import Y.C0389a;
import Y.K;
import android.os.Bundle;
import android.widget.FrameLayout;
import b7.A1;
import p039f.AbstractActivityC3000o;

/* JADX INFO: loaded from: classes2.dex */
public class SearchActivity extends AbstractActivityC3000o {

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public FrameLayout f29078e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public C0389a f29079f0;

    @Override // Y.AbstractActivityC0409v, p000a.m, D.h, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_search);
        this.f29078e0 = (FrameLayout) findViewById(R.id.fragment_holder);
        K kR = this.f7985X.R();
        kR.getClass();
        C0389a c0389a = new C0389a(kR);
        this.f29079f0 = c0389a;
        c0389a.g(R.id.fragment_holder, new A1());
        this.f29079f0.d(false);
    }

    @Override // Y.AbstractActivityC0409v, android.app.Activity
    public final void onResume() {
        super.onResume();
    }
}
