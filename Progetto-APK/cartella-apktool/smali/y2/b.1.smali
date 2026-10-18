.class public final Ly2/b;
.super Ljava/lang/ref/WeakReference;
.source "SourceFile"


# instance fields
.field public final a:Lw2/i;

.field public final b:Z

.field public c:Ly2/D;


# direct methods
.method public constructor <init>(Lw2/i;Ly2/x;Ljava/lang/ref/ReferenceQueue;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 2
    .line 3
    .line 4
    const-string p3, "Argument must not be null"

    .line 5
    .line 6
    invoke-static {p1, p3}, Ln0/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Ly2/b;->a:Lw2/i;

    .line 10
    .line 11
    iget-boolean p1, p2, Ly2/x;->G:Z

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    if-eqz p4, :cond_0

    .line 16
    .line 17
    iget-object p1, p2, Ly2/x;->I:Ly2/D;

    .line 18
    .line 19
    invoke-static {p1, p3}, Ln0/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    :goto_0
    iput-object p1, p0, Ly2/b;->c:Ly2/D;

    .line 25
    .line 26
    iget-boolean p1, p2, Ly2/x;->G:Z

    .line 27
    .line 28
    iput-boolean p1, p0, Ly2/b;->b:Z

    .line 29
    .line 30
    return-void
.end method
