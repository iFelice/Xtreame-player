package R3;

import J3.j;
import android.content.Context;
import android.os.IBinder;

/* JADX INFO: loaded from: classes.dex */
public abstract class d {
    private final String zza;
    private Object zzb;

    public d(String str) {
        this.zza = str;
    }

    public abstract Object getRemoteCreator(IBinder iBinder);

    public final Object getRemoteCreatorInstance(Context context) throws c {
        if (this.zzb == null) {
            com.bumptech.glide.c.h(context);
            Context contextA = j.a(context);
            if (contextA == null) {
                throw new c("Could not get remote context.");
            }
            try {
                this.zzb = getRemoteCreator((IBinder) contextA.getClassLoader().loadClass(this.zza).newInstance());
            } catch (ClassNotFoundException e8) {
                throw new c("Could not load creator class.", e8);
            } catch (IllegalAccessException e9) {
                throw new c("Could not access creator.", e9);
            } catch (InstantiationException e10) {
                throw new c("Could not instantiate creator.", e10);
            }
        }
        return this.zzb;
    }
}
