.class public final Lcom/google/android/gms/internal/pal/J6;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Ljava/util/logging/Logger;

.field public static final c:Ljava/util/ArrayList;

.field public static final d:Z

.field public static final e:Lcom/google/android/gms/internal/pal/J6;

.field public static final f:Lcom/google/android/gms/internal/pal/J6;

.field public static final g:Lcom/google/android/gms/internal/pal/J6;

.field public static final h:Lcom/google/android/gms/internal/pal/J6;

.field public static final i:Lcom/google/android/gms/internal/pal/J6;


# instance fields
.field public final a:Lcom/google/android/gms/internal/pal/L6;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const-class v0, Lcom/google/android/gms/internal/pal/J6;

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
    move-result-object v0

    .line 11
    sput-object v0, Lcom/google/android/gms/internal/pal/J6;->b:Ljava/util/logging/Logger;

    .line 12
    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/pal/U3;->a()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x0

    .line 18
    const-string v2, "AndroidOpenSSL"

    .line 19
    .line 20
    const-string v3, "GmsCore_OpenSSL"

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    const-string v0, "Conscrypt"

    .line 25
    .line 26
    filled-new-array {v3, v2, v0}, [Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {v0}, Lcom/google/android/gms/internal/pal/J6;->b([Ljava/lang/String;)Ljava/util/ArrayList;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    sput-object v0, Lcom/google/android/gms/internal/pal/J6;->c:Ljava/util/ArrayList;

    .line 35
    .line 36
    sput-boolean v1, Lcom/google/android/gms/internal/pal/J6;->d:Z

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const-string v0, "java.vendor"

    .line 40
    .line 41
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const-string v4, "The Android Project"

    .line 46
    .line 47
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    const/4 v4, 0x1

    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    filled-new-array {v3, v2}, [Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-static {v0}, Lcom/google/android/gms/internal/pal/J6;->b([Ljava/lang/String;)Ljava/util/ArrayList;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    sput-object v0, Lcom/google/android/gms/internal/pal/J6;->c:Ljava/util/ArrayList;

    .line 63
    .line 64
    sput-boolean v4, Lcom/google/android/gms/internal/pal/J6;->d:Z

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .line 71
    .line 72
    sput-object v0, Lcom/google/android/gms/internal/pal/J6;->c:Ljava/util/ArrayList;

    .line 73
    .line 74
    sput-boolean v4, Lcom/google/android/gms/internal/pal/J6;->d:Z

    .line 75
    .line 76
    :goto_0
    new-instance v0, Lcom/google/android/gms/internal/pal/J6;

    .line 77
    .line 78
    new-instance v2, Lcom/google/android/gms/internal/pal/c;

    .line 79
    .line 80
    const/16 v3, 0x12

    .line 81
    .line 82
    invoke-direct {v2, v3, v1}, Lcom/google/android/gms/internal/pal/c;-><init>(II)V

    .line 83
    .line 84
    .line 85
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/pal/J6;-><init>(Lcom/google/android/gms/internal/pal/c;)V

    .line 86
    .line 87
    .line 88
    sput-object v0, Lcom/google/android/gms/internal/pal/J6;->e:Lcom/google/android/gms/internal/pal/J6;

    .line 89
    .line 90
    new-instance v0, Lcom/google/android/gms/internal/pal/J6;

    .line 91
    .line 92
    new-instance v2, Lcom/google/android/gms/internal/pal/c;

    .line 93
    .line 94
    const/16 v3, 0x16

    .line 95
    .line 96
    invoke-direct {v2, v3, v1}, Lcom/google/android/gms/internal/pal/c;-><init>(II)V

    .line 97
    .line 98
    .line 99
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/pal/J6;-><init>(Lcom/google/android/gms/internal/pal/c;)V

    .line 100
    .line 101
    .line 102
    sput-object v0, Lcom/google/android/gms/internal/pal/J6;->f:Lcom/google/android/gms/internal/pal/J6;

    .line 103
    .line 104
    new-instance v0, Lcom/google/android/gms/internal/pal/J6;

    .line 105
    .line 106
    new-instance v2, Lcom/google/android/gms/internal/pal/c;

    .line 107
    .line 108
    const/16 v3, 0x13

    .line 109
    .line 110
    invoke-direct {v2, v3, v1}, Lcom/google/android/gms/internal/pal/c;-><init>(II)V

    .line 111
    .line 112
    .line 113
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/pal/J6;-><init>(Lcom/google/android/gms/internal/pal/c;)V

    .line 114
    .line 115
    .line 116
    sput-object v0, Lcom/google/android/gms/internal/pal/J6;->g:Lcom/google/android/gms/internal/pal/J6;

    .line 117
    .line 118
    new-instance v0, Lcom/google/android/gms/internal/pal/J6;

    .line 119
    .line 120
    new-instance v2, Lcom/google/android/gms/internal/pal/c;

    .line 121
    .line 122
    const/16 v3, 0x15

    .line 123
    .line 124
    invoke-direct {v2, v3, v1}, Lcom/google/android/gms/internal/pal/c;-><init>(II)V

    .line 125
    .line 126
    .line 127
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/pal/J6;-><init>(Lcom/google/android/gms/internal/pal/c;)V

    .line 128
    .line 129
    .line 130
    sput-object v0, Lcom/google/android/gms/internal/pal/J6;->h:Lcom/google/android/gms/internal/pal/J6;

    .line 131
    .line 132
    new-instance v0, Lcom/google/android/gms/internal/pal/J6;

    .line 133
    .line 134
    new-instance v2, Lcom/google/android/gms/internal/pal/c;

    .line 135
    .line 136
    const/16 v3, 0x14

    .line 137
    .line 138
    invoke-direct {v2, v3, v1}, Lcom/google/android/gms/internal/pal/c;-><init>(II)V

    .line 139
    .line 140
    .line 141
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/pal/J6;-><init>(Lcom/google/android/gms/internal/pal/c;)V

    .line 142
    .line 143
    .line 144
    sput-object v0, Lcom/google/android/gms/internal/pal/J6;->i:Lcom/google/android/gms/internal/pal/J6;

    .line 145
    .line 146
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/pal/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/pal/J6;->a:Lcom/google/android/gms/internal/pal/L6;

    .line 5
    .line 6
    return-void
.end method

.method public static varargs b([Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    array-length v1, p0

    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    if-ge v2, v1, :cond_1

    .line 9
    .line 10
    aget-object v3, p0, v2

    .line 11
    .line 12
    invoke-static {v3}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    sget-object v4, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    .line 23
    .line 24
    const-string v5, "Provider "

    .line 25
    .line 26
    const-string v6, " not available"

    .line 27
    .line 28
    invoke-static {v5, v3, v6}, La/r;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    const-string v5, "com.google.crypto.tink.subtle.EngineFactory"

    .line 33
    .line 34
    const-string v6, "toProviderList"

    .line 35
    .line 36
    sget-object v7, Lcom/google/android/gms/internal/pal/J6;->b:Ljava/util/logging/Logger;

    .line 37
    .line 38
    invoke-virtual {v7, v4, v5, v6, v3}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/pal/J6;->c:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move-object v2, v1

    .line 9
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    iget-object v4, p0, Lcom/google/android/gms/internal/pal/J6;->a:Lcom/google/android/gms/internal/pal/L6;

    .line 14
    .line 15
    if-eqz v3, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    check-cast v3, Ljava/security/Provider;

    .line 22
    .line 23
    :try_start_0
    check-cast v4, Lcom/google/android/gms/internal/pal/c;

    .line 24
    .line 25
    invoke-virtual {v4, p1, v3}, Lcom/google/android/gms/internal/pal/c;->b(Ljava/lang/String;Ljava/security/Provider;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    return-object p1

    .line 30
    :catch_0
    move-exception v3

    .line 31
    if-nez v2, :cond_0

    .line 32
    .line 33
    move-object v2, v3

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    sget-boolean v0, Lcom/google/android/gms/internal/pal/J6;->d:Z

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    check-cast v4, Lcom/google/android/gms/internal/pal/c;

    .line 40
    .line 41
    invoke-virtual {v4, p1, v1}, Lcom/google/android/gms/internal/pal/c;->b(Ljava/lang/String;Ljava/security/Provider;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    return-object p1

    .line 46
    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 47
    .line 48
    const-string v0, "No good Provider found."

    .line 49
    .line 50
    invoke-direct {p1, v0, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    .line 52
    .line 53
    throw p1
.end method
