package p004a3;

import B0.O;
import C0.C0084i;
import O0.A;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import okhttp3.Call;
import okhttp3.EventListener;
import okhttp3.internal.Util;
import org.videolan.libvlc.MediaPlayer;
import org.videolan.libvlc.interfaces.AbstractVLCEvent;
import p012b3.h;
import p012b3.j;
import p020c3.b;
import p094m0.Y;
import p094m0.k0;
import p102n0.c;
import p115o6.a;
import pe.hf.black20.PlayStreamEPGActivity;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class i implements b, h, p037e5.b, EventListener.Factory, MediaPlayer.EventListener {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f8674G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ Object f8675H;

    public /* synthetic */ i(Object obj, int i8) {
        this.f8674G = i8;
        this.f8675H = obj;
    }

    public final void a(k0 k0Var) {
        ((O) ((Y) this.f8675H)).U(k0Var);
    }

    @Override // p012b3.h
    public final Object apply(Object obj) {
        int i8 = this.f8674G;
        Object obj2 = this.f8675H;
        switch (i8) {
            case 4:
                Map map = (Map) obj2;
                Cursor cursor = (Cursor) obj;
                R2.b bVar = j.f9852L;
                while (cursor.moveToNext()) {
                    long j8 = cursor.getLong(0);
                    Set hashSet = (Set) map.get(Long.valueOf(j8));
                    if (hashSet == null) {
                        hashSet = new HashSet();
                        map.put(Long.valueOf(j8), hashSet);
                    }
                    hashSet.add(new p012b3.i(cursor.getString(1), cursor.getString(2)));
                }
                return null;
            case 7:
                p052g4.i iVar = (p052g4.i) obj2;
                Throwable th = (Throwable) obj;
                if (th instanceof Exception) {
                    iVar.a((Exception) th);
                } else {
                    iVar.a(new RuntimeException(th));
                }
                return a.f28009a;
            default:
                ((c) obj2).getClass();
                throw null;
        }
    }

    @Override // okhttp3.EventListener.Factory
    public final EventListener create(Call call) {
        return Util.asFactory$lambda$8((EventListener) this.f8675H, call);
    }

    @Override // p020c3.b
    public final Object execute() {
        int i8 = this.f8674G;
        Object obj = this.f8675H;
        switch (i8) {
            case 0:
                j jVar = (j) ((p012b3.c) obj);
                jVar.getClass();
                int i9 = X2.a.f7631e;
                int i10 = 6;
                p096m2.i iVar = new p096m2.i(6);
                HashMap map = new HashMap();
                SQLiteDatabase sQLiteDatabaseK = jVar.k();
                sQLiteDatabaseK.beginTransaction();
                try {
                    X2.a aVar = (X2.a) j.c0(sQLiteDatabaseK.rawQuery("SELECT log_source, reason, events_dropped_count FROM log_event_dropped", new String[0]), new A(jVar, map, iVar, i10));
                    sQLiteDatabaseK.setTransactionSuccessful();
                    return aVar;
                } finally {
                    sQLiteDatabaseK.endTransaction();
                }
            default:
                l lVar = (l) obj;
                j jVar2 = (j) lVar.f8695b;
                jVar2.getClass();
                Iterator it = ((Iterable) jVar2.N(new C0084i(14))).iterator();
                while (it.hasNext()) {
                    ((d) lVar.f8696c).a((U2.i) it.next(), 1, false);
                }
                return null;
        }
    }

    @Override // org.videolan.libvlc.interfaces.AbstractVLCEvent.Listener
    public final void onEvent(AbstractVLCEvent abstractVLCEvent) {
        PlayStreamEPGActivity playStreamEPGActivity = (PlayStreamEPGActivity) this.f8675H;
        String str = PlayStreamEPGActivity.THEME;
        playStreamEPGActivity.getClass();
        switch (((MediaPlayer.Event) abstractVLCEvent).type) {
            case MediaPlayer.Event.Opening /* 258 */:
                if (playStreamEPGActivity.f28844E2) {
                    playStreamEPGActivity.f28833B0.setVisibility(0);
                }
                break;
            case MediaPlayer.Event.Playing /* 260 */:
                playStreamEPGActivity.f28833B0.setVisibility(8);
                break;
            case MediaPlayer.Event.Paused /* 261 */:
                playStreamEPGActivity.f28833B0.setVisibility(8);
                break;
            case MediaPlayer.Event.Stopped /* 262 */:
                playStreamEPGActivity.f28833B0.setVisibility(8);
                break;
        }
    }
}
