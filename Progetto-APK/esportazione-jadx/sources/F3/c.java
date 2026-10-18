package F3;

import D3.C0160d;
import E1.e0;
import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.cast.AbstractC2434d;
import com.google.android.gms.internal.cast.AbstractC2501u;
import com.google.android.gms.internal.cast.C2442f;

/* JADX INFO: loaded from: classes.dex */
public final class c extends AsyncTask {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final H3.b f3186c = new H3.b("FetchBitmapTask", null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final f f3187a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final e0 f3188b;

    public c(Context context, int i8, int i9, e0 e0Var) {
        f fVarD3;
        this.f3188b = e0Var;
        Context applicationContext = context.getApplicationContext();
        b bVar = new b(this);
        H3.b bVar2 = AbstractC2434d.f22665a;
        try {
            C2442f c2442fB = AbstractC2434d.b(applicationContext.getApplicationContext());
            R3.b bVar3 = new R3.b(applicationContext.getApplicationContext());
            Parcel parcelV0 = c2442fB.v0(8, c2442fB.j0());
            int i10 = parcelV0.readInt();
            parcelV0.recycle();
            fVarD3 = i10 >= 233700000 ? c2442fB.D3(bVar3, new R3.b(this), bVar, i8, i9) : c2442fB.C3(new R3.b(this), bVar, i8, i9);
        } catch (C0160d | RemoteException e8) {
            AbstractC2434d.f22665a.a(e8, "Unable to call %s on %s.", "newFetchBitmapTaskImpl", C2442f.class.getSimpleName());
            fVarD3 = null;
        }
        this.f3187a = fVarD3;
    }

    @Override // android.os.AsyncTask
    public final Object doInBackground(Object[] objArr) {
        Uri uri;
        f fVar;
        Uri[] uriArr = (Uri[]) objArr;
        if (uriArr.length != 1 || (uri = uriArr[0]) == null || (fVar = this.f3187a) == null) {
            return null;
        }
        try {
            d dVar = (d) fVar;
            Parcel parcelJ0 = dVar.j0();
            AbstractC2501u.c(parcelJ0, uri);
            Parcel parcelV0 = dVar.v0(1, parcelJ0);
            Bitmap bitmap = (Bitmap) AbstractC2501u.a(parcelV0, Bitmap.CREATOR);
            parcelV0.recycle();
            return bitmap;
        } catch (RemoteException e8) {
            f3186c.a(e8, "Unable to call %s on %s.", "doFetch", f.class.getSimpleName());
            return null;
        }
    }

    @Override // android.os.AsyncTask
    public final void onPostExecute(Object obj) {
        Bitmap bitmap = (Bitmap) obj;
        e0 e0Var = this.f3188b;
        if (e0Var != null) {
            e0Var.f2727g = bitmap;
            e0Var.f2722b = true;
            a aVar = (a) e0Var.f2728h;
            if (aVar != null) {
                aVar.a(bitmap);
            }
            e0Var.f2725e = null;
        }
    }
}
