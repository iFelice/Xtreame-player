package O5;

import android.content.DialogInterface;
import android.database.sqlite.SQLiteDatabase;
import b7.C0549t;
import com.google.protobuf.U2;
import okhttp3.HttpUrl;
import pe.hf.black20.SeriesActivity;
import pe.hf.black20.SplashActivity;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class i implements DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f5605G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ Object f5606H;

    public /* synthetic */ i(Object obj, int i8) {
        this.f5605G = i8;
        this.f5606H = obj;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i8) {
        int i9 = this.f5605G;
        Object obj = this.f5606H;
        switch (i9) {
            case 0:
                ((k) obj).f5609a.finish();
                return;
            case 1:
                C0549t c0549t = (C0549t) obj;
                int i10 = C0549t.f10413f;
                c0549t.getClass();
                c7.d dVar = new c7.d(c0549t.f10415b);
                StringBuilder sb = new StringBuilder();
                U2.x("ORT_PROFILE_ID", HttpUrl.FRAGMENT_ENCODE_SET, sb, "-");
                sb.append((String) c0549t.f10418e.get("id"));
                dVar.C0(sb.toString());
                c7.b bVar = new c7.b(c0549t.f10415b, 0);
                StringBuilder sb2 = new StringBuilder();
                U2.x("ORT_PROFILE_ID", HttpUrl.FRAGMENT_ENCODE_SET, sb2, "-");
                sb2.append((String) c0549t.f10418e.get("id"));
                String string = sb2.toString();
                SQLiteDatabase writableDatabase = bVar.getWritableDatabase();
                try {
                    writableDatabase.delete("episode", "episode_stream_id = ?", new String[]{string});
                    writableDatabase.close();
                    SeriesActivity.f29081B0.invalidateViews();
                    dialogInterface.dismiss();
                    return;
                } catch (Throwable th) {
                    writableDatabase.close();
                    throw th;
                }
            default:
                SplashActivity splashActivity = (SplashActivity) obj;
                int i11 = SplashActivity.f29173B0;
                splashActivity.getClass();
                dialogInterface.dismiss();
                splashActivity.finish();
                return;
        }
    }
}
