.class public final LU0/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:LU0/E;

.field public c:LU0/v;

.field public d:Z

.field public e:Lp0/f;

.field public f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;LU0/E;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, LU0/p;->a:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p2, p0, LU0/p;->b:LU0/E;

    .line 11
    .line 12
    sget-object p1, Lp0/f;->a:Lp0/G;

    .line 13
    .line 14
    iput-object p1, p0, LU0/p;->e:Lp0/f;

    .line 15
    .line 16
    return-void
.end method
