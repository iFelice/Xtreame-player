.class public final synthetic Lcom/google/android/gms/internal/cast/O2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/cast/A;


# static fields
.field public static final synthetic G:Lcom/google/android/gms/internal/cast/O2;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/cast/O2;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/cast/O2;->G:Lcom/google/android/gms/internal/cast/O2;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/cast/Z2;->n:LH3/b;

    .line 2
    .line 3
    sget-object v0, LD3/a;->k:LH3/b;

    .line 4
    .line 5
    const-string v0, "Must be called from the main thread."

    .line 6
    .line 7
    invoke-static {v0}, Lcom/bumptech/glide/c;->d(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    sget-object v1, LD3/a;->m:LD3/a;

    .line 11
    .line 12
    invoke-static {v1}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/bumptech/glide/c;->d(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, v1, LD3/a;->d:LD3/b;

    .line 19
    .line 20
    iget-object v0, v0, LD3/b;->G:Ljava/lang/String;

    .line 21
    .line 22
    return-object v0
.end method
