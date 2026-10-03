package com.google.ads.interactivemedia.v3.internal;

import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.io.StringWriter;
import java.io.Writer;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzwj<T> {
    public final T fromJson(Reader reader) {
        return read(new zzacc(reader));
    }

    public final T fromJsonTree(zzvw zzvwVar) {
        try {
            return read(new zzyz(zzvwVar));
        } catch (IOException e8) {
            throw new zzvx(e8);
        }
    }

    public final zzwj<T> nullSafe() {
        return new zzwi(this);
    }

    public abstract T read(zzacc zzaccVar);

    public final void toJson(Writer writer, T t7) {
        write(new zzace(writer), t7);
    }

    public final zzvw toJsonTree(T t7) {
        try {
            zzzb zzzbVar = new zzzb();
            write(zzzbVar, t7);
            return zzzbVar.zza();
        } catch (IOException e8) {
            throw new zzvx(e8);
        }
    }

    public abstract void write(zzace zzaceVar, T t7);

    public final T fromJson(String str) {
        return fromJson(new StringReader(str));
    }

    public final String toJson(T t7) {
        StringWriter stringWriter = new StringWriter();
        try {
            toJson(stringWriter, t7);
            return stringWriter.toString();
        } catch (IOException e8) {
            throw new zzvx(e8);
        }
    }
}
