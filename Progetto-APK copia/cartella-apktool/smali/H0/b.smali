.class public final LH0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LH0/m;


# static fields
.field public static final f:LW0/w;


# instance fields
.field public final a:LW0/s;

.field public final b:Lm0/t;

.field public final c:Lp0/J;

.field public final d:Lq1/k;

.field public final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LW0/w;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, LH0/b;->f:LW0/w;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(LW0/s;Lm0/t;Lp0/J;Lq1/k;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LH0/b;->a:LW0/s;

    .line 5
    .line 6
    iput-object p2, p0, LH0/b;->b:Lm0/t;

    .line 7
    .line 8
    iput-object p3, p0, LH0/b;->c:Lp0/J;

    .line 9
    .line 10
    iput-object p4, p0, LH0/b;->d:Lq1/k;

    .line 11
    .line 12
    iput-boolean p5, p0, LH0/b;->e:Z

    .line 13
    .line 14
    return-void
.end method
