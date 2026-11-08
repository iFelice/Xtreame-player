.class public abstract Lcom/google/android/gms/internal/cast/J1;
.super Lcom/google/android/gms/internal/cast/I1;
.source "SourceFile"

# interfaces
.implements LD4/b;


# instance fields
.field public final G:LD4/b;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/cast/F1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/J1;->G:LD4/b;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/J1;->G:LD4/b;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, LD4/b;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
