.class public final Lcom/google/android/gms/internal/pal/s3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/pal/u3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/pal/M3;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/pal/s3;->a:I

    iput-object p1, p0, Lcom/google/android/gms/internal/pal/s3;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/pal/m2;
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/pal/s3;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/pal/s3;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/pal/m2;

    .line 9
    .line 10
    check-cast v1, Lk/d;

    .line 11
    .line 12
    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/pal/m2;-><init>(Lk/d;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    return-object v0

    .line 16
    :catch_0
    move-exception p1

    .line 17
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 18
    .line 19
    const-string v1, "Primitive type not supported"

    .line 20
    .line 21
    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    throw v0

    .line 25
    :pswitch_0
    check-cast v1, Lcom/google/android/gms/internal/pal/m2;

    .line 26
    .line 27
    iget-object v0, v1, Lcom/google/android/gms/internal/pal/m2;->I:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v0, Ljava/lang/Class;

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_0

    .line 36
    .line 37
    return-object v1

    .line 38
    :cond_0
    new-instance p1, Ljava/lang/InternalError;

    .line 39
    .line 40
    const-string v0, "This should never be called, as we always first check supportedPrimitives."

    .line 41
    .line 42
    invoke-direct {p1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p1

    .line 46
    nop

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final zzb()Lcom/google/android/gms/internal/pal/m2;
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/pal/s3;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/pal/s3;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance v0, Lcom/google/android/gms/internal/pal/m2;

    .line 9
    .line 10
    check-cast v1, Lk/d;

    .line 11
    .line 12
    iget-object v2, v1, Lk/d;->c:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v2, Ljava/lang/Class;

    .line 15
    .line 16
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/pal/m2;-><init>(Lk/d;Ljava/lang/Class;)V

    .line 17
    .line 18
    .line 19
    return-object v0

    .line 20
    :pswitch_0
    check-cast v1, Lcom/google/android/gms/internal/pal/m2;

    .line 21
    .line 22
    return-object v1

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final zzc()Ljava/lang/Class;
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/pal/s3;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/pal/s3;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast v1, Lk/d;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0

    .line 15
    :pswitch_0
    check-cast v1, Lcom/google/android/gms/internal/pal/m2;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final zzd()Ljava/lang/Class;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zze()Ljava/util/Set;
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/pal/s3;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/pal/s3;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast v1, Lk/d;

    .line 9
    .line 10
    iget-object v0, v1, Lk/d;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Ljava/util/Map;

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0

    .line 19
    :pswitch_0
    check-cast v1, Lcom/google/android/gms/internal/pal/m2;

    .line 20
    .line 21
    iget-object v0, v1, Lcom/google/android/gms/internal/pal/m2;->I:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v0, Ljava/lang/Class;

    .line 24
    .line 25
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    return-object v0

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
