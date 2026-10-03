package com.google.api;

import com.google.protobuf.AbstractC2879b;
import com.google.protobuf.AbstractC2883c;
import com.google.protobuf.AbstractC2909i1;
import com.google.protobuf.AbstractC2961w;
import com.google.protobuf.C2885c1;
import com.google.protobuf.EnumC2905h1;
import com.google.protobuf.InterfaceC2894e2;
import com.google.protobuf.InterfaceC2956u1;
import com.google.protobuf.O0;
import com.google.protobuf.r;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;
import okhttp3.HttpUrl;
import p175w4.C3203b0;
import p175w4.InterfaceC3205c0;
import p175w4.M;
import p175w4.N;

/* JADX INFO: loaded from: classes.dex */
public final class MonitoredResourceDescriptor extends AbstractC2909i1 implements InterfaceC3205c0 {
    private static final MonitoredResourceDescriptor DEFAULT_INSTANCE;
    public static final int DESCRIPTION_FIELD_NUMBER = 3;
    public static final int DISPLAY_NAME_FIELD_NUMBER = 2;
    public static final int LABELS_FIELD_NUMBER = 4;
    public static final int LAUNCH_STAGE_FIELD_NUMBER = 7;
    public static final int NAME_FIELD_NUMBER = 5;
    private static volatile InterfaceC2894e2 PARSER = null;
    public static final int TYPE_FIELD_NUMBER = 1;
    private int launchStage_;
    private String name_ = HttpUrl.FRAGMENT_ENCODE_SET;
    private String type_ = HttpUrl.FRAGMENT_ENCODE_SET;
    private String displayName_ = HttpUrl.FRAGMENT_ENCODE_SET;
    private String description_ = HttpUrl.FRAGMENT_ENCODE_SET;
    private InterfaceC2956u1 labels_ = AbstractC2909i1.emptyProtobufList();

    static {
        MonitoredResourceDescriptor monitoredResourceDescriptor = new MonitoredResourceDescriptor();
        DEFAULT_INSTANCE = monitoredResourceDescriptor;
        AbstractC2909i1.registerDefaultInstance(MonitoredResourceDescriptor.class, monitoredResourceDescriptor);
    }

    private MonitoredResourceDescriptor() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addAllLabels(Iterable<? extends LabelDescriptor> iterable) {
        ensureLabelsIsMutable();
        AbstractC2879b.addAll((Iterable) iterable, (List) this.labels_);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addLabels(LabelDescriptor labelDescriptor) {
        labelDescriptor.getClass();
        ensureLabelsIsMutable();
        this.labels_.add(labelDescriptor);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearDescription() {
        this.description_ = getDefaultInstance().getDescription();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearDisplayName() {
        this.displayName_ = getDefaultInstance().getDisplayName();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearLabels() {
        this.labels_ = AbstractC2909i1.emptyProtobufList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearLaunchStage() {
        this.launchStage_ = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearName() {
        this.name_ = getDefaultInstance().getName();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearType() {
        this.type_ = getDefaultInstance().getType();
    }

    private void ensureLabelsIsMutable() {
        InterfaceC2956u1 interfaceC2956u1 = this.labels_;
        if (((AbstractC2883c) interfaceC2956u1).f24418G) {
            return;
        }
        this.labels_ = AbstractC2909i1.mutableCopy(interfaceC2956u1);
    }

    public static MonitoredResourceDescriptor getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static C3203b0 newBuilder() {
        return (C3203b0) DEFAULT_INSTANCE.createBuilder();
    }

    public static MonitoredResourceDescriptor parseDelimitedFrom(InputStream inputStream) {
        return (MonitoredResourceDescriptor) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static MonitoredResourceDescriptor parseFrom(ByteBuffer byteBuffer) {
        return (MonitoredResourceDescriptor) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static InterfaceC2894e2 parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeLabels(int i8) {
        ensureLabelsIsMutable();
        this.labels_.remove(i8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setDescription(String str) {
        str.getClass();
        this.description_ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setDescriptionBytes(r rVar) {
        AbstractC2879b.checkByteStringIsUtf8(rVar);
        this.description_ = rVar.t();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setDisplayName(String str) {
        str.getClass();
        this.displayName_ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setDisplayNameBytes(r rVar) {
        AbstractC2879b.checkByteStringIsUtf8(rVar);
        this.displayName_ = rVar.t();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setLabels(int i8, LabelDescriptor labelDescriptor) {
        labelDescriptor.getClass();
        ensureLabelsIsMutable();
        this.labels_.set(i8, labelDescriptor);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setLaunchStage(N n7) {
        this.launchStage_ = n7.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setLaunchStageValue(int i8) {
        this.launchStage_ = i8;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setName(String str) {
        str.getClass();
        this.name_ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setNameBytes(r rVar) {
        AbstractC2879b.checkByteStringIsUtf8(rVar);
        this.name_ = rVar.t();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setType(String str) {
        str.getClass();
        this.type_ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setTypeBytes(r rVar) {
        AbstractC2879b.checkByteStringIsUtf8(rVar);
        this.type_ = rVar.t();
    }

    @Override // com.google.protobuf.AbstractC2909i1
    public final Object dynamicMethod(EnumC2905h1 enumC2905h1, Object obj, Object obj2) {
        switch (enumC2905h1.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return AbstractC2909i1.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0006\u0000\u0000\u0001\u0007\u0006\u0000\u0001\u0000\u0001Ȉ\u0002Ȉ\u0003Ȉ\u0004\u001b\u0005Ȉ\u0007\f", new Object[]{"type_", "displayName_", "description_", "labels_", LabelDescriptor.class, "name_", "launchStage_"});
            case 3:
                return new MonitoredResourceDescriptor();
            case 4:
                return new C3203b0(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC2894e2 c2885c1 = PARSER;
                if (c2885c1 == null) {
                    synchronized (MonitoredResourceDescriptor.class) {
                        try {
                            c2885c1 = PARSER;
                            if (c2885c1 == null) {
                                c2885c1 = new C2885c1(DEFAULT_INSTANCE);
                                PARSER = c2885c1;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                        break;
                    }
                }
                return c2885c1;
            default:
                throw new UnsupportedOperationException();
        }
    }

    public String getDescription() {
        return this.description_;
    }

    public r getDescriptionBytes() {
        return r.l(this.description_);
    }

    public String getDisplayName() {
        return this.displayName_;
    }

    public r getDisplayNameBytes() {
        return r.l(this.displayName_);
    }

    public LabelDescriptor getLabels(int i8) {
        return (LabelDescriptor) this.labels_.get(i8);
    }

    public int getLabelsCount() {
        return this.labels_.size();
    }

    public List<LabelDescriptor> getLabelsList() {
        return this.labels_;
    }

    public M getLabelsOrBuilder(int i8) {
        return (M) this.labels_.get(i8);
    }

    public List<? extends M> getLabelsOrBuilderList() {
        return this.labels_;
    }

    public N getLaunchStage() {
        N nB = N.b(this.launchStage_);
        return nB == null ? N.UNRECOGNIZED : nB;
    }

    public int getLaunchStageValue() {
        return this.launchStage_;
    }

    public String getName() {
        return this.name_;
    }

    public r getNameBytes() {
        return r.l(this.name_);
    }

    public String getType() {
        return this.type_;
    }

    public r getTypeBytes() {
        return r.l(this.type_);
    }

    public static C3203b0 newBuilder(MonitoredResourceDescriptor monitoredResourceDescriptor) {
        return (C3203b0) DEFAULT_INSTANCE.createBuilder(monitoredResourceDescriptor);
    }

    public static MonitoredResourceDescriptor parseDelimitedFrom(InputStream inputStream, O0 o4) {
        return (MonitoredResourceDescriptor) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static MonitoredResourceDescriptor parseFrom(ByteBuffer byteBuffer, O0 o4) {
        return (MonitoredResourceDescriptor) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer, o4);
    }

    public static MonitoredResourceDescriptor parseFrom(r rVar) {
        return (MonitoredResourceDescriptor) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addLabels(int i8, LabelDescriptor labelDescriptor) {
        labelDescriptor.getClass();
        ensureLabelsIsMutable();
        this.labels_.add(i8, labelDescriptor);
    }

    public static MonitoredResourceDescriptor parseFrom(r rVar, O0 o4) {
        return (MonitoredResourceDescriptor) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar, o4);
    }

    public static MonitoredResourceDescriptor parseFrom(byte[] bArr) {
        return (MonitoredResourceDescriptor) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static MonitoredResourceDescriptor parseFrom(byte[] bArr, O0 o4) {
        return (MonitoredResourceDescriptor) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr, o4);
    }

    public static MonitoredResourceDescriptor parseFrom(InputStream inputStream) {
        return (MonitoredResourceDescriptor) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static MonitoredResourceDescriptor parseFrom(InputStream inputStream, O0 o4) {
        return (MonitoredResourceDescriptor) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static MonitoredResourceDescriptor parseFrom(AbstractC2961w abstractC2961w) {
        return (MonitoredResourceDescriptor) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w);
    }

    public static MonitoredResourceDescriptor parseFrom(AbstractC2961w abstractC2961w, O0 o4) {
        return (MonitoredResourceDescriptor) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w, o4);
    }
}
