package com.bumptech.glide.load.data;

import android.content.ContentResolver;
import android.content.res.AssetManager;
import android.net.Uri;
import android.util.Log;
import java.io.Closeable;
import java.io.FileNotFoundException;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public abstract class b implements e {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f11567G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public Object f11568H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final Comparable f11569I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final Object f11570J;

    public /* synthetic */ b(Object obj, Comparable comparable, int i8) {
        this.f11567G = i8;
        this.f11570J = obj;
        this.f11569I = comparable;
    }

    public abstract void b(Object obj);

    @Override // com.bumptech.glide.load.data.e
    public final void c() {
        switch (this.f11567G) {
            case 0:
                Object obj = this.f11568H;
                if (obj != null) {
                    try {
                        b(obj);
                    } catch (IOException unused) {
                        return;
                    }
                    break;
                }
                break;
            default:
                Object obj2 = this.f11568H;
                if (obj2 != null) {
                    try {
                        b(obj2);
                    } catch (IOException unused2) {
                        return;
                    }
                }
                break;
        }
    }

    @Override // com.bumptech.glide.load.data.e
    public final void cancel() {
    }

    @Override // com.bumptech.glide.load.data.e
    public final p173w2.a d() {
        return p173w2.a.f30981G;
    }

    @Override // com.bumptech.glide.load.data.e
    public final void e(com.bumptech.glide.g gVar, d dVar) {
        int i8 = this.f11567G;
        Object obj = this.f11570J;
        Comparable comparable = this.f11569I;
        switch (i8) {
            case 0:
                try {
                    Closeable closeableF = f((AssetManager) obj, (String) comparable);
                    this.f11568H = closeableF;
                    dVar.f(closeableF);
                } catch (IOException e8) {
                    if (Log.isLoggable("AssetPathFetcher", 3)) {
                        Log.d("AssetPathFetcher", "Failed to load data from asset manager", e8);
                    }
                    dVar.b(e8);
                }
                break;
            default:
                try {
                    Object objG = g((ContentResolver) obj, (Uri) comparable);
                    this.f11568H = objG;
                    dVar.f(objG);
                } catch (FileNotFoundException e9) {
                    if (Log.isLoggable("LocalUriFetcher", 3)) {
                        Log.d("LocalUriFetcher", "Failed to open Uri", e9);
                    }
                    dVar.b(e9);
                    return;
                }
                break;
        }
    }

    public abstract Closeable f(AssetManager assetManager, String str);

    public abstract Object g(ContentResolver contentResolver, Uri uri);
}
