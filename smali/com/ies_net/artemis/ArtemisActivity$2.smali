.class Lcom/ies_net/artemis/ArtemisActivity$2;
.super Ljava/lang/Object;
.source "ArtemisActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ies_net/artemis/ArtemisActivity;->onStateUpdate(Lcom/google/android/play/core/assetpacks/AssetPackState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ies_net/artemis/ArtemisActivity;

.field final synthetic val$max:J

.field final synthetic val$now:J


# direct methods
.method constructor <init>(Lcom/ies_net/artemis/ArtemisActivity;JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$now",
            "val$max"
        }
    .end annotation

    .line 96
    iput-object p1, p0, Lcom/ies_net/artemis/ArtemisActivity$2;->this$0:Lcom/ies_net/artemis/ArtemisActivity;

    iput-wide p2, p0, Lcom/ies_net/artemis/ArtemisActivity$2;->val$max:J

    iput-wide p4, p0, Lcom/ies_net/artemis/ArtemisActivity$2;->val$now:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/ies_net/artemis/ArtemisActivity$2;->this$0:Lcom/ies_net/artemis/ArtemisActivity;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/ies_net/artemis/ArtemisActivity$2;->this$0:Lcom/ies_net/artemis/ArtemisActivity;

    invoke-static {v2}, Lcom/ies_net/artemis/ArtemisActivity;->access$300(Lcom/ies_net/artemis/ArtemisActivity;)Lcom/ies_net/artemis/ArtemisActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/ies_net/artemis/ArtemisActivity;->access$202(Lcom/ies_net/artemis/ArtemisActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 99
    iget-object v0, p0, Lcom/ies_net/artemis/ArtemisActivity$2;->this$0:Lcom/ies_net/artemis/ArtemisActivity;

    invoke-static {v0}, Lcom/ies_net/artemis/ArtemisActivity;->access$200(Lcom/ies_net/artemis/ArtemisActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 100
    iget-object v0, p0, Lcom/ies_net/artemis/ArtemisActivity$2;->this$0:Lcom/ies_net/artemis/ArtemisActivity;

    invoke-static {v0}, Lcom/ies_net/artemis/ArtemisActivity;->access$200(Lcom/ies_net/artemis/ArtemisActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    const-string v1, "Download"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v0, p0, Lcom/ies_net/artemis/ArtemisActivity$2;->this$0:Lcom/ies_net/artemis/ArtemisActivity;

    invoke-static {v0}, Lcom/ies_net/artemis/ArtemisActivity;->access$200(Lcom/ies_net/artemis/ArtemisActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    const-string v1, "Downloading Game Data..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v0, p0, Lcom/ies_net/artemis/ArtemisActivity$2;->this$0:Lcom/ies_net/artemis/ArtemisActivity;

    invoke-static {v0}, Lcom/ies_net/artemis/ArtemisActivity;->access$200(Lcom/ies_net/artemis/ArtemisActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 103
    iget-object v0, p0, Lcom/ies_net/artemis/ArtemisActivity$2;->this$0:Lcom/ies_net/artemis/ArtemisActivity;

    invoke-static {v0}, Lcom/ies_net/artemis/ArtemisActivity;->access$200(Lcom/ies_net/artemis/ArtemisActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-wide v1, p0, Lcom/ies_net/artemis/ArtemisActivity$2;->val$max:J

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 104
    iget-object v0, p0, Lcom/ies_net/artemis/ArtemisActivity$2;->this$0:Lcom/ies_net/artemis/ArtemisActivity;

    invoke-static {v0}, Lcom/ies_net/artemis/ArtemisActivity;->access$200(Lcom/ies_net/artemis/ArtemisActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-wide v1, p0, Lcom/ies_net/artemis/ArtemisActivity$2;->val$now:J

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->incrementProgressBy(I)V

    .line 105
    iget-object v0, p0, Lcom/ies_net/artemis/ArtemisActivity$2;->this$0:Lcom/ies_net/artemis/ArtemisActivity;

    invoke-static {v0}, Lcom/ies_net/artemis/ArtemisActivity;->access$200(Lcom/ies_net/artemis/ArtemisActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method
