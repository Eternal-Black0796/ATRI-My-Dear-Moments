.class Lcom/ies_net/artemis/DownloadActivity$HttpTask$10;
.super Ljava/lang/Object;
.source "DownloadActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ies_net/artemis/DownloadActivity$HttpTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ies_net/artemis/DownloadActivity$HttpTask;


# direct methods
.method constructor <init>(Lcom/ies_net/artemis/DownloadActivity$HttpTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 232
    iput-object p1, p0, Lcom/ies_net/artemis/DownloadActivity$HttpTask$10;->this$1:Lcom/ies_net/artemis/DownloadActivity$HttpTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 235
    iget-object v0, p0, Lcom/ies_net/artemis/DownloadActivity$HttpTask$10;->this$1:Lcom/ies_net/artemis/DownloadActivity$HttpTask;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/ies_net/artemis/DownloadActivity$HttpTask$10;->this$1:Lcom/ies_net/artemis/DownloadActivity$HttpTask;

    iget-object v2, v2, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->this$0:Lcom/ies_net/artemis/DownloadActivity;

    invoke-static {v2}, Lcom/ies_net/artemis/DownloadActivity;->access$100(Lcom/ies_net/artemis/DownloadActivity;)Lcom/ies_net/artemis/DownloadActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->access$602(Lcom/ies_net/artemis/DownloadActivity$HttpTask;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 237
    iget-object v0, p0, Lcom/ies_net/artemis/DownloadActivity$HttpTask$10;->this$1:Lcom/ies_net/artemis/DownloadActivity$HttpTask;

    invoke-static {v0}, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->access$600(Lcom/ies_net/artemis/DownloadActivity$HttpTask;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 240
    iget-object v0, p0, Lcom/ies_net/artemis/DownloadActivity$HttpTask$10;->this$1:Lcom/ies_net/artemis/DownloadActivity$HttpTask;

    invoke-static {v0}, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->access$600(Lcom/ies_net/artemis/DownloadActivity$HttpTask;)Landroid/app/ProgressDialog;

    move-result-object v0

    const-string v2, "Download"

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 242
    iget-object v0, p0, Lcom/ies_net/artemis/DownloadActivity$HttpTask$10;->this$1:Lcom/ies_net/artemis/DownloadActivity$HttpTask;

    invoke-static {v0}, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->access$600(Lcom/ies_net/artemis/DownloadActivity$HttpTask;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ies_net/artemis/DownloadActivity$HttpTask$10;->this$1:Lcom/ies_net/artemis/DownloadActivity$HttpTask;

    invoke-static {v3}, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->access$700(Lcom/ies_net/artemis/DownloadActivity$HttpTask;)I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    iget-object v3, p0, Lcom/ies_net/artemis/DownloadActivity$HttpTask$10;->this$1:Lcom/ies_net/artemis/DownloadActivity$HttpTask;

    invoke-static {v3}, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->access$800(Lcom/ies_net/artemis/DownloadActivity$HttpTask;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "Downloading Game Data... (%d/%d)"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 244
    iget-object v0, p0, Lcom/ies_net/artemis/DownloadActivity$HttpTask$10;->this$1:Lcom/ies_net/artemis/DownloadActivity$HttpTask;

    invoke-static {v0}, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->access$900(Lcom/ies_net/artemis/DownloadActivity$HttpTask;)J

    move-result-wide v2

    const-wide/16 v5, 0x0

    cmp-long v0, v2, v5

    if-lez v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/ies_net/artemis/DownloadActivity$HttpTask$10;->this$1:Lcom/ies_net/artemis/DownloadActivity$HttpTask;

    invoke-static {v0}, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->access$600(Lcom/ies_net/artemis/DownloadActivity$HttpTask;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 248
    iget-object v0, p0, Lcom/ies_net/artemis/DownloadActivity$HttpTask$10;->this$1:Lcom/ies_net/artemis/DownloadActivity$HttpTask;

    invoke-static {v0}, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->access$600(Lcom/ies_net/artemis/DownloadActivity$HttpTask;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/ies_net/artemis/DownloadActivity$HttpTask$10;->this$1:Lcom/ies_net/artemis/DownloadActivity$HttpTask;

    invoke-static {v1}, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->access$1000(Lcom/ies_net/artemis/DownloadActivity$HttpTask;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/ies_net/artemis/DownloadActivity$HttpTask$10;->this$1:Lcom/ies_net/artemis/DownloadActivity$HttpTask;

    invoke-static {v3}, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->access$900(Lcom/ies_net/artemis/DownloadActivity$HttpTask;)J

    move-result-wide v3

    add-long/2addr v1, v3

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 250
    iget-object v0, p0, Lcom/ies_net/artemis/DownloadActivity$HttpTask$10;->this$1:Lcom/ies_net/artemis/DownloadActivity$HttpTask;

    invoke-static {v0}, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->access$600(Lcom/ies_net/artemis/DownloadActivity$HttpTask;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/ies_net/artemis/DownloadActivity$HttpTask$10;->this$1:Lcom/ies_net/artemis/DownloadActivity$HttpTask;

    invoke-static {v1}, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->access$1000(Lcom/ies_net/artemis/DownloadActivity$HttpTask;)J

    move-result-wide v1

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->incrementProgressBy(I)V

    goto :goto_0

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/ies_net/artemis/DownloadActivity$HttpTask$10;->this$1:Lcom/ies_net/artemis/DownloadActivity$HttpTask;

    invoke-static {v0}, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->access$600(Lcom/ies_net/artemis/DownloadActivity$HttpTask;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 256
    :goto_0
    iget-object v0, p0, Lcom/ies_net/artemis/DownloadActivity$HttpTask$10;->this$1:Lcom/ies_net/artemis/DownloadActivity$HttpTask;

    invoke-static {v0}, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->access$600(Lcom/ies_net/artemis/DownloadActivity$HttpTask;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method
