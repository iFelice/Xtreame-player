.class public final Lcom/google/android/gms/common/internal/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/c;


# instance fields
.field public final synthetic a:LK3/l;


# direct methods
.method public constructor <init>(LK3/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/common/internal/B;->a:LK3/l;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onConnectionFailed(LJ3/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/B;->a:LK3/l;

    .line 2
    .line 3
    invoke-interface {v0, p1}, LK3/l;->onConnectionFailed(LJ3/b;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
