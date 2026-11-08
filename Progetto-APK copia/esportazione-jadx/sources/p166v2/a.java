package p166v2;

import C2.t;
import android.util.Log;
import com.bumptech.glide.g;
import com.bumptech.glide.load.data.d;
import com.bumptech.glide.load.data.e;
import java.io.IOException;
import java.io.InputStream;
import java.util.Map;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import p102n0.c;

/* JADX INFO: loaded from: classes.dex */
public final class a implements e, Callback {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Call.Factory f30554G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final t f30555H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public P2.e f30556I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public ResponseBody f30557J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public d f30558K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public volatile Call f30559L;

    public a(Call.Factory factory, t tVar) {
        this.f30554G = factory;
        this.f30555H = tVar;
    }

    @Override // com.bumptech.glide.load.data.e
    public final Class a() {
        return InputStream.class;
    }

    @Override // com.bumptech.glide.load.data.e
    public final void c() {
        try {
            P2.e eVar = this.f30556I;
            if (eVar != null) {
                eVar.close();
            }
        } catch (IOException unused) {
        }
        ResponseBody responseBody = this.f30557J;
        if (responseBody != null) {
            responseBody.close();
        }
        this.f30558K = null;
    }

    @Override // com.bumptech.glide.load.data.e
    public final void cancel() {
        Call call = this.f30559L;
        if (call != null) {
            call.cancel();
        }
    }

    @Override // com.bumptech.glide.load.data.e
    public final p173w2.a d() {
        return p173w2.a.f30982H;
    }

    @Override // com.bumptech.glide.load.data.e
    public final void e(g gVar, d dVar) {
        Request.Builder builderUrl = new Request.Builder().url(this.f30555H.d());
        for (Map.Entry entry : this.f30555H.f1410b.a().entrySet()) {
            builderUrl.addHeader((String) entry.getKey(), (String) entry.getValue());
        }
        Request requestBuild = builderUrl.build();
        this.f30558K = dVar;
        this.f30559L = this.f30554G.newCall(requestBuild);
        this.f30559L.enqueue(this);
    }

    @Override // okhttp3.Callback
    public final void onFailure(Call call, IOException iOException) {
        if (Log.isLoggable("OkHttpFetcher", 3)) {
            Log.d("OkHttpFetcher", "OkHttp failed to obtain result", iOException);
        }
        this.f30558K.b(iOException);
    }

    @Override // okhttp3.Callback
    public final void onResponse(Call call, Response response) {
        this.f30557J = response.body();
        if (!response.isSuccessful()) {
            this.f30558K.b(new p173w2.d(response.message(), response.code(), null));
            return;
        }
        ResponseBody responseBody = this.f30557J;
        c.c(responseBody, "Argument must not be null");
        P2.e eVar = new P2.e(this.f30557J.byteStream(), responseBody.contentLength());
        this.f30556I = eVar;
        this.f30558K.f(eVar);
    }
}
