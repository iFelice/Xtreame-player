.class public abstract Lcom/google/android/gms/internal/ads/JC;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/JC;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 8
    .line 9
    .line 10
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 13
    .line 14
    .line 15
    new-instance v0, Ljava/util/HashSet;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 18
    .line 19
    .line 20
    const-class v1, Lcom/google/android/gms/internal/ads/vC;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    const-class v1, Lcom/google/android/gms/internal/ads/wC;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    const-class v1, Lcom/google/android/gms/internal/ads/KC;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    const-class v1, Lcom/google/android/gms/internal/ads/zC;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    const-class v1, Lcom/google/android/gms/internal/ads/yC;

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    const-class v1, Lcom/google/android/gms/internal/ads/FC;

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    const-class v1, Lcom/google/android/gms/internal/ads/jF;

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    const-class v1, Lcom/google/android/gms/internal/ads/HC;

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    const-class v1, Lcom/google/android/gms/internal/ads/IC;

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/cG;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cG;->E()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cG;->D()Lcom/google/android/gms/internal/ads/XG;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    sget-object v1, Lcom/google/android/gms/internal/ads/XD;->d:Lcom/google/android/gms/internal/ads/XD;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/XD;->c(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/cE;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/cE;->b:Ljava/lang/Class;

    .line 16
    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/cE;->b:Ljava/lang/Class;

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    sget-object p1, Lcom/google/android/gms/internal/ads/xG;->K:Lcom/google/android/gms/internal/ads/xG;

    .line 26
    .line 27
    iget v1, v0, Lcom/google/android/gms/internal/ads/cE;->c:I

    .line 28
    .line 29
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cE;->a:Ljava/lang/String;

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    invoke-static {v0, p0, v1, p1, v3}, Lcom/google/android/gms/internal/ads/FE;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/XG;ILcom/google/android/gms/internal/ads/xG;Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/FE;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    sget-object p1, Lcom/google/android/gms/internal/ads/sE;->b:Lcom/google/android/gms/internal/ads/sE;

    .line 37
    .line 38
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/sE;->a(Lcom/google/android/gms/internal/ads/FE;)Lcom/google/android/gms/internal/ads/Cw;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    sget-object p1, Lcom/google/android/gms/internal/ads/rE;->b:Lcom/google/android/gms/internal/ads/rE;

    .line 43
    .line 44
    invoke-virtual {p1, p0, v2}, Lcom/google/android/gms/internal/ads/rE;->b(Lcom/google/android/gms/internal/ads/Cw;Ljava/lang/Class;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    return-object p0

    .line 49
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    const-class v0, Lcom/google/android/gms/internal/ads/cE;

    .line 56
    .line 57
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    const-string v2, "Primitive type "

    .line 66
    .line 67
    const-string v3, " not supported by key manager of type "

    .line 68
    .line 69
    const-string v4, ", which only supports: "

    .line 70
    .line 71
    invoke-static {v2, p1, v3, v0, v4}, Lcom/google/protobuf/U2;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    throw p0
.end method
