package com.google.ads.interactivemedia.v3.internal;

import com.google.protobuf.U2;
import org.eclipse.paho.client.mqttv3.MqttTopic;
import p000a.r;

/* JADX INFO: loaded from: classes.dex */
final class zzaaw implements zzwk {
    final /* synthetic */ Class zza;
    final /* synthetic */ Class zzb;
    final /* synthetic */ zzwj zzc;

    public zzaaw(Class cls, Class cls2, zzwj zzwjVar) {
        this.zza = cls;
        this.zzb = cls2;
        this.zzc = zzwjVar;
    }

    public final String toString() {
        zzwj zzwjVar = this.zzc;
        Class cls = this.zzb;
        String name = this.zza.getName();
        String name2 = cls.getName();
        return r.j(U2.q("Factory[type=", name, MqttTopic.SINGLE_LEVEL_WILDCARD, name2, ",adapter="), zzwjVar.toString(), "]");
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzwk
    public final zzwj zza(zzvr zzvrVar, zzaca zzacaVar) {
        Class clsZzc = zzacaVar.zzc();
        if (clsZzc == this.zza || clsZzc == this.zzb) {
            return this.zzc;
        }
        return null;
    }
}
