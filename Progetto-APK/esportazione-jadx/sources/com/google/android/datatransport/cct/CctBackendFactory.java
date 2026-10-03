package com.google.android.datatransport.cct;

import S2.d;
import V2.b;
import V2.c;
import V2.h;
import android.content.Context;
import androidx.annotation.Keep;

/* JADX INFO: loaded from: classes.dex */
@Keep
public class CctBackendFactory {
    public h create(c cVar) {
        Context context = ((b) cVar).f7089a;
        b bVar = (b) cVar;
        return new d(context, bVar.f7090b, bVar.f7091c);
    }
}
