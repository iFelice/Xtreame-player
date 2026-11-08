package com.google.ads.interactivemedia.v3.internal;

import com.google.protobuf.U2;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.GenericDeclaration;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Properties;

/* JADX INFO: loaded from: classes.dex */
public final class zzwr {
    static final Type[] zza = new Type[0];

    public static Class zza(Type type) {
        if (type instanceof Class) {
            return (Class) type;
        }
        if (type instanceof ParameterizedType) {
            Type rawType = ((ParameterizedType) type).getRawType();
            zzwn.zza(rawType instanceof Class);
            return (Class) rawType;
        }
        if (type instanceof GenericArrayType) {
            return Array.newInstance((Class<?>) zza(((GenericArrayType) type).getGenericComponentType()), 0).getClass();
        }
        if (type instanceof TypeVariable) {
            return Object.class;
        }
        if (type instanceof WildcardType) {
            return zza(((WildcardType) type).getUpperBounds()[0]);
        }
        throw new IllegalArgumentException(U2.m("Expected a Class, ParameterizedType, or GenericArrayType, but <", String.valueOf(type), "> is of type ", type == null ? "null" : type.getClass().getName()));
    }

    public static String zzb(Type type) {
        return type instanceof Class ? ((Class) type).getName() : type.toString();
    }

    public static Type zzc(Type type) {
        if (type instanceof Class) {
            Class cls = (Class) type;
            return cls.isArray() ? new zzwo(zzc(cls.getComponentType())) : cls;
        }
        if (type instanceof ParameterizedType) {
            ParameterizedType parameterizedType = (ParameterizedType) type;
            return new zzwp(parameterizedType.getOwnerType(), parameterizedType.getRawType(), parameterizedType.getActualTypeArguments());
        }
        if (type instanceof GenericArrayType) {
            return new zzwo(((GenericArrayType) type).getGenericComponentType());
        }
        if (!(type instanceof WildcardType)) {
            return type;
        }
        WildcardType wildcardType = (WildcardType) type;
        return new zzwq(wildcardType.getUpperBounds(), wildcardType.getLowerBounds());
    }

    public static Type zzd(Type type, Class cls) {
        Type typeZzj = zzj(type, cls, Collection.class);
        return typeZzj instanceof ParameterizedType ? ((ParameterizedType) typeZzj).getActualTypeArguments()[0] : Object.class;
    }

    public static Type zze(Type type, Class cls, Type type2) {
        return zzk(type, cls, type2, new HashMap());
    }

    public static void zzf(Type type) {
        boolean z7 = true;
        if ((type instanceof Class) && ((Class) type).isPrimitive()) {
            z7 = false;
        }
        zzwn.zza(z7);
    }

    public static boolean zzg(Type type, Type type2) {
        if (type == type2) {
            return true;
        }
        if (type instanceof Class) {
            return type.equals(type2);
        }
        if (type instanceof ParameterizedType) {
            if (!(type2 instanceof ParameterizedType)) {
                return false;
            }
            ParameterizedType parameterizedType = (ParameterizedType) type;
            ParameterizedType parameterizedType2 = (ParameterizedType) type2;
            return Objects.equals(parameterizedType.getOwnerType(), parameterizedType2.getOwnerType()) && parameterizedType.getRawType().equals(parameterizedType2.getRawType()) && Arrays.equals(parameterizedType.getActualTypeArguments(), parameterizedType2.getActualTypeArguments());
        }
        if (type instanceof GenericArrayType) {
            if (type2 instanceof GenericArrayType) {
                return zzg(((GenericArrayType) type).getGenericComponentType(), ((GenericArrayType) type2).getGenericComponentType());
            }
            return false;
        }
        if (type instanceof WildcardType) {
            if (!(type2 instanceof WildcardType)) {
                return false;
            }
            WildcardType wildcardType = (WildcardType) type;
            WildcardType wildcardType2 = (WildcardType) type2;
            return Arrays.equals(wildcardType.getUpperBounds(), wildcardType2.getUpperBounds()) && Arrays.equals(wildcardType.getLowerBounds(), wildcardType2.getLowerBounds());
        }
        if (!(type instanceof TypeVariable) || !(type2 instanceof TypeVariable)) {
            return false;
        }
        TypeVariable typeVariable = (TypeVariable) type;
        TypeVariable typeVariable2 = (TypeVariable) type2;
        return Objects.equals(typeVariable.getGenericDeclaration(), typeVariable2.getGenericDeclaration()) && typeVariable.getName().equals(typeVariable2.getName());
    }

    public static Type[] zzh(Type type, Class cls) {
        if (type == Properties.class) {
            return new Type[]{String.class, String.class};
        }
        Type typeZzj = zzj(type, cls, Map.class);
        return typeZzj instanceof ParameterizedType ? ((ParameterizedType) typeZzj).getActualTypeArguments() : new Type[]{Object.class, Object.class};
    }

    private static Type zzi(Type type, Class cls, Class cls2) {
        if (cls2 == cls) {
            return type;
        }
        if (cls2.isInterface()) {
            Class<?>[] interfaces = cls.getInterfaces();
            int length = interfaces.length;
            for (int i8 = 0; i8 < length; i8++) {
                Class<?> cls3 = interfaces[i8];
                if (cls3 == cls2) {
                    return cls.getGenericInterfaces()[i8];
                }
                if (cls2.isAssignableFrom(cls3)) {
                    return zzi(cls.getGenericInterfaces()[i8], interfaces[i8], cls2);
                }
            }
        }
        if (!cls.isInterface()) {
            while (cls != Object.class) {
                Class<?> superclass = cls.getSuperclass();
                if (superclass == cls2) {
                    return cls.getGenericSuperclass();
                }
                if (cls2.isAssignableFrom(superclass)) {
                    return zzi(cls.getGenericSuperclass(), superclass, cls2);
                }
                cls = superclass;
            }
        }
        return cls2;
    }

    private static Type zzj(Type type, Class cls, Class cls2) {
        if (type instanceof WildcardType) {
            type = ((WildcardType) type).getUpperBounds()[0];
        }
        zzwn.zza(cls2.isAssignableFrom(cls));
        return zze(type, cls, zzi(type, cls, cls2));
    }

    /* JADX WARN: Code duplicated, block: B:30:0x0059  */
    /* JADX WARN: Code duplicated, block: B:41:0x0083  */
    /* JADX WARN: Code duplicated, block: B:43:0x0087  */
    /* JADX WARN: Code duplicated, block: B:45:0x0097 A[EDGE_INSN: B:45:0x0097->B:83:0x0142 BREAK  A[LOOP:0: B:3:0x0004->B:94:?]] */
    /* JADX WARN: Code duplicated, block: B:46:0x009e  */
    /* JADX WARN: Code duplicated, block: B:48:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:50:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:52:0x00c8 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:53:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:58:0x00da A[EDGE_INSN: B:58:0x00da->B:83:0x0142 BREAK  A[LOOP:0: B:3:0x0004->B:94:?]] */
    /* JADX WARN: Code duplicated, block: B:59:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:61:0x00e8  */
    /* JADX WARN: Code duplicated, block: B:63:0x00f5  */
    /* JADX WARN: Code duplicated, block: B:65:0x00ff  */
    /* JADX WARN: Code duplicated, block: B:67:0x0103  */
    /* JADX WARN: Code duplicated, block: B:68:0x010a  */
    /* JADX WARN: Code duplicated, block: B:70:0x011b  */
    /* JADX WARN: Code duplicated, block: B:72:0x011e  */
    /* JADX WARN: Code duplicated, block: B:76:0x0128  */
    /* JADX WARN: Code duplicated, block: B:78:0x012c  */
    /* JADX WARN: Code duplicated, block: B:79:0x0133  */
    /* JADX WARN: Code duplicated, block: B:98:0x00d4 A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v0, types: [java.lang.reflect.Type] */
    /* JADX WARN: Type inference failed for: r12v1, types: [java.lang.reflect.Type] */
    /* JADX WARN: Type inference failed for: r12v10, types: [com.google.ads.interactivemedia.v3.internal.zzwo] */
    /* JADX WARN: Type inference failed for: r12v11 */
    /* JADX WARN: Type inference failed for: r12v12, types: [java.lang.Object, java.lang.reflect.Type] */
    /* JADX WARN: Type inference failed for: r12v17 */
    /* JADX WARN: Type inference failed for: r12v18 */
    /* JADX WARN: Type inference failed for: r12v2, types: [java.lang.reflect.WildcardType] */
    /* JADX WARN: Type inference failed for: r12v20, types: [java.lang.reflect.Type[]] */
    /* JADX WARN: Type inference failed for: r12v21 */
    /* JADX WARN: Type inference failed for: r12v3, types: [com.google.ads.interactivemedia.v3.internal.zzwq] */
    /* JADX WARN: Type inference failed for: r12v4, types: [com.google.ads.interactivemedia.v3.internal.zzwq] */
    /* JADX WARN: Type inference failed for: r12v5, types: [java.lang.reflect.ParameterizedType] */
    /* JADX WARN: Type inference failed for: r12v6, types: [com.google.ads.interactivemedia.v3.internal.zzwp] */
    /* JADX WARN: Type inference failed for: r12v7, types: [java.lang.reflect.GenericArrayType] */
    /* JADX WARN: Type inference failed for: r12v8, types: [com.google.ads.interactivemedia.v3.internal.zzwo] */
    /* JADX WARN: Type inference failed for: r13v0, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r4v5 */
    private static Type zzk(Type type, Class cls, Type type2, Map map) {
        Type[] lowerBounds;
        Type[] upperBounds;
        Type typeZzk;
        Type[] upperBounds2;
        Type typeZzk2;
        Type[] lowerBounds2;
        Type typeZzk3;
        boolean z7;
        int length;
        Type[] typeArr;
        boolean z8;
        Type typeZzk4;
        Type genericComponentType;
        Type typeZzk5;
        TypeVariable typeVariable;
        TypeVariable typeVariable2 = null;
        do {
            if (!(type2 instanceof TypeVariable)) {
                if (!(type2 instanceof Class)) {
                    if (type2 instanceof GenericArrayType) {
                        if (type2 instanceof ParameterizedType) {
                            if (type2 instanceof WildcardType) {
                                break;
                            }
                            type2 = (WildcardType) type2;
                            lowerBounds = type2.getLowerBounds();
                            upperBounds = type2.getUpperBounds();
                            if (lowerBounds.length == 1) {
                                if (upperBounds.length == 1) {
                                    break;
                                }
                                typeZzk = zzk(type, cls, upperBounds[0], map);
                                if (typeZzk != upperBounds[0]) {
                                    break;
                                }
                                if (typeZzk instanceof WildcardType) {
                                    upperBounds2 = ((WildcardType) typeZzk).getUpperBounds();
                                } else {
                                    upperBounds2 = new Type[]{typeZzk};
                                }
                                type2 = new zzwq(upperBounds2, zza);
                                break;
                            }
                            typeZzk2 = zzk(type, cls, lowerBounds[0], map);
                            if (typeZzk2 != lowerBounds[0]) {
                                break;
                            }
                            if (typeZzk2 instanceof WildcardType) {
                                lowerBounds2 = ((WildcardType) typeZzk2).getLowerBounds();
                            } else {
                                lowerBounds2 = new Type[]{typeZzk2};
                            }
                            type2 = new zzwq(new Type[]{Object.class}, lowerBounds2);
                            break;
                        }
                        type2 = (ParameterizedType) type2;
                        Type ownerType = type2.getOwnerType();
                        typeZzk3 = zzk(type, cls, ownerType, map);
                        z7 = !Objects.equals(typeZzk3, ownerType);
                        Type[] actualTypeArguments = type2.getActualTypeArguments();
                        length = actualTypeArguments.length;
                        typeArr = actualTypeArguments;
                        z8 = false;
                        for (int i8 = 0; i8 < length; i8++) {
                            typeZzk4 = zzk(type, cls, typeArr[i8], map);
                            if (Objects.equals(typeZzk4, typeArr[i8])) {
                                if (!z8) {
                                    typeArr = (Type[]) typeArr.clone();
                                }
                                typeArr[i8] = typeZzk4;
                                z8 = true;
                            }
                        }
                        if (z7) {
                            type2 = new zzwp(typeZzk3, type2.getRawType(), typeArr);
                            break;
                        }
                        type2 = new zzwp(typeZzk3, type2.getRawType(), typeArr);
                        break;
                    }
                    type2 = (GenericArrayType) type2;
                    genericComponentType = type2.getGenericComponentType();
                    typeZzk5 = zzk(type, cls, genericComponentType, map);
                    if (Objects.equals(genericComponentType, typeZzk5)) {
                        type2 = new zzwo(typeZzk5);
                        break;
                    }
                    break;
                }
                Class cls2 = (Class) type2;
                if (!cls2.isArray()) {
                    if (type2 instanceof GenericArrayType) {
                        if (type2 instanceof ParameterizedType) {
                            if (type2 instanceof WildcardType) {
                                break;
                            }
                            type2 = (WildcardType) type2;
                            lowerBounds = type2.getLowerBounds();
                            upperBounds = type2.getUpperBounds();
                            if (lowerBounds.length == 1) {
                                if (upperBounds.length == 1) {
                                    break;
                                }
                                typeZzk = zzk(type, cls, upperBounds[0], map);
                                if (typeZzk != upperBounds[0]) {
                                    break;
                                }
                                if (typeZzk instanceof WildcardType) {
                                    upperBounds2 = ((WildcardType) typeZzk).getUpperBounds();
                                } else {
                                    upperBounds2 = new Type[]{typeZzk};
                                }
                                type2 = new zzwq(upperBounds2, zza);
                                break;
                            }
                            typeZzk2 = zzk(type, cls, lowerBounds[0], map);
                            if (typeZzk2 != lowerBounds[0]) {
                                break;
                            }
                            if (typeZzk2 instanceof WildcardType) {
                                lowerBounds2 = ((WildcardType) typeZzk2).getLowerBounds();
                            } else {
                                lowerBounds2 = new Type[]{typeZzk2};
                            }
                            type2 = new zzwq(new Type[]{Object.class}, lowerBounds2);
                            break;
                        }
                        type2 = (ParameterizedType) type2;
                        Type ownerType2 = type2.getOwnerType();
                        typeZzk3 = zzk(type, cls, ownerType2, map);
                        z7 = !Objects.equals(typeZzk3, ownerType2);
                        Type[] actualTypeArguments2 = type2.getActualTypeArguments();
                        length = actualTypeArguments2.length;
                        typeArr = actualTypeArguments2;
                        z8 = false;
                        while (i8 < length) {
                            typeZzk4 = zzk(type, cls, typeArr[i8], map);
                            if (Objects.equals(typeZzk4, typeArr[i8])) {
                                if (!z8) {
                                    typeArr = (Type[]) typeArr.clone();
                                }
                                typeArr[i8] = typeZzk4;
                                z8 = true;
                            }
                        }
                        if (z7 && !z8) {
                            break;
                        }
                        type2 = new zzwp(typeZzk3, type2.getRawType(), typeArr);
                        break;
                    }
                    type2 = (GenericArrayType) type2;
                    genericComponentType = type2.getGenericComponentType();
                    typeZzk5 = zzk(type, cls, genericComponentType, map);
                    if (Objects.equals(genericComponentType, typeZzk5)) {
                        break;
                    }
                    type2 = new zzwo(typeZzk5);
                    break;
                }
                Class<?> componentType = cls2.getComponentType();
                Type typeZzk6 = zzk(type, cls, componentType, map);
                if (!Objects.equals(componentType, typeZzk6)) {
                    type2 = new zzwo(typeZzk6);
                    break;
                }
                type2 = cls2;
                break;
            }
            typeVariable = (TypeVariable) type2;
            Type type3 = (Type) map.get(typeVariable);
            if (type3 != null) {
                return type3 == Void.TYPE ? type2 : type3;
            }
            map.put(typeVariable, Void.TYPE);
            if (typeVariable2 == null) {
                typeVariable2 = typeVariable;
            }
            GenericDeclaration genericDeclaration = typeVariable.getGenericDeclaration();
            Class cls3 = genericDeclaration instanceof Class ? (Class) genericDeclaration : null;
            if (cls3 == null) {
                type2 = typeVariable;
            } else {
                Type typeZzi = zzi(type, cls, cls3);
                if (typeZzi instanceof ParameterizedType) {
                    TypeVariable[] typeParameters = cls3.getTypeParameters();
                    int length2 = typeParameters.length;
                    int i9 = 0;
                    while (true) {
                        if (i9 >= length2) {
                            throw new NoSuchElementException();
                        }
                        if (typeVariable.equals(typeParameters[i9])) {
                            type2 = ((ParameterizedType) typeZzi).getActualTypeArguments()[i9];
                            break;
                        }
                        i9++;
                    }
                } else {
                    type2 = typeVariable;
                }
            }
        } while (type2 != typeVariable);
        if (typeVariable2 != null) {
            map.put(typeVariable2, type2);
        }
        return type2;
    }
}
