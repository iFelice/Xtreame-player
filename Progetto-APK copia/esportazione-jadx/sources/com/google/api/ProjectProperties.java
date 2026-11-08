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
import com.google.protobuf.R1;
import com.google.protobuf.r;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;
import p175w4.j0;
import p175w4.m0;

/* JADX INFO: loaded from: classes.dex */
public final class ProjectProperties extends AbstractC2909i1 implements R1 {
    private static final ProjectProperties DEFAULT_INSTANCE;
    private static volatile InterfaceC2894e2 PARSER = null;
    public static final int PROPERTIES_FIELD_NUMBER = 1;
    private InterfaceC2956u1 properties_ = AbstractC2909i1.emptyProtobufList();

    static {
        ProjectProperties projectProperties = new ProjectProperties();
        DEFAULT_INSTANCE = projectProperties;
        AbstractC2909i1.registerDefaultInstance(ProjectProperties.class, projectProperties);
    }

    private ProjectProperties() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addAllProperties(Iterable<? extends Property> iterable) {
        ensurePropertiesIsMutable();
        AbstractC2879b.addAll((Iterable) iterable, (List) this.properties_);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addProperties(Property property) {
        property.getClass();
        ensurePropertiesIsMutable();
        this.properties_.add(property);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearProperties() {
        this.properties_ = AbstractC2909i1.emptyProtobufList();
    }

    private void ensurePropertiesIsMutable() {
        InterfaceC2956u1 interfaceC2956u1 = this.properties_;
        if (((AbstractC2883c) interfaceC2956u1).f24418G) {
            return;
        }
        this.properties_ = AbstractC2909i1.mutableCopy(interfaceC2956u1);
    }

    public static ProjectProperties getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static j0 newBuilder() {
        return (j0) DEFAULT_INSTANCE.createBuilder();
    }

    public static ProjectProperties parseDelimitedFrom(InputStream inputStream) {
        return (ProjectProperties) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static ProjectProperties parseFrom(ByteBuffer byteBuffer) {
        return (ProjectProperties) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static InterfaceC2894e2 parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeProperties(int i8) {
        ensurePropertiesIsMutable();
        this.properties_.remove(i8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setProperties(int i8, Property property) {
        property.getClass();
        ensurePropertiesIsMutable();
        this.properties_.set(i8, property);
    }

    @Override // com.google.protobuf.AbstractC2909i1
    public final Object dynamicMethod(EnumC2905h1 enumC2905h1, Object obj, Object obj2) {
        switch (enumC2905h1.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return AbstractC2909i1.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"properties_", Property.class});
            case 3:
                return new ProjectProperties();
            case 4:
                return new j0(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC2894e2 c2885c1 = PARSER;
                if (c2885c1 == null) {
                    synchronized (ProjectProperties.class) {
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

    public Property getProperties(int i8) {
        return (Property) this.properties_.get(i8);
    }

    public int getPropertiesCount() {
        return this.properties_.size();
    }

    public List<Property> getPropertiesList() {
        return this.properties_;
    }

    public m0 getPropertiesOrBuilder(int i8) {
        return (m0) this.properties_.get(i8);
    }

    public List<? extends m0> getPropertiesOrBuilderList() {
        return this.properties_;
    }

    public static j0 newBuilder(ProjectProperties projectProperties) {
        return (j0) DEFAULT_INSTANCE.createBuilder(projectProperties);
    }

    public static ProjectProperties parseDelimitedFrom(InputStream inputStream, O0 o4) {
        return (ProjectProperties) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static ProjectProperties parseFrom(ByteBuffer byteBuffer, O0 o4) {
        return (ProjectProperties) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer, o4);
    }

    public static ProjectProperties parseFrom(r rVar) {
        return (ProjectProperties) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addProperties(int i8, Property property) {
        property.getClass();
        ensurePropertiesIsMutable();
        this.properties_.add(i8, property);
    }

    public static ProjectProperties parseFrom(r rVar, O0 o4) {
        return (ProjectProperties) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar, o4);
    }

    public static ProjectProperties parseFrom(byte[] bArr) {
        return (ProjectProperties) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static ProjectProperties parseFrom(byte[] bArr, O0 o4) {
        return (ProjectProperties) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr, o4);
    }

    public static ProjectProperties parseFrom(InputStream inputStream) {
        return (ProjectProperties) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static ProjectProperties parseFrom(InputStream inputStream, O0 o4) {
        return (ProjectProperties) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static ProjectProperties parseFrom(AbstractC2961w abstractC2961w) {
        return (ProjectProperties) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w);
    }

    public static ProjectProperties parseFrom(AbstractC2961w abstractC2961w, O0 o4) {
        return (ProjectProperties) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w, o4);
    }
}
