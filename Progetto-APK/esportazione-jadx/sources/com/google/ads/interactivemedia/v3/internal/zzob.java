package com.google.ads.interactivemedia.v3.internal;

import android.content.Context;
import org.eclipse.paho.client.mqttv3.DisconnectedBufferOptions;

/* JADX INFO: loaded from: classes.dex */
public final class zzob {
    public static zzbp zza(Context context, String str, String str2) {
        return new zzoa(context, str, str2).zzb(DisconnectedBufferOptions.DISCONNECTED_BUFFER_SIZE_DEFAULT);
    }
}
